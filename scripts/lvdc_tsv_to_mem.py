#!/usr/bin/env python3
import csv
import argparse
import pathlib

def add_parity(word):
    p = 1
    for i in range(14):
        if (word & (1 << i)):
            p ^= 1
    return word | p

def translate_tsv(input_tsv, output_dir):
    mod = 0
    sector = 0
    loc = 0

    data = [[0]*4096 for i in range(8)]
    with open(input_tsv, newline='') as tsv:
        reader = csv.reader(tsv, delimiter='\t')
        for row in reader:
            if row[0] == 'SECTOR':
                mod = int(row[1], 8)
                sector = int(row[2], 8)
                loc = 0
                continue
            
            loc = int(row[0], 8)

            for i in range(8):
                syls = row[1+2*i]
                duplex = row[2+2*i] == 'D'

                if not syls.strip():
                    continue

                elif syls[5] == ' ':
                    syl1 = syls[:5].strip()
                    syl0 = syls[6:].strip()
                    if syl1:
                        syl1 = add_parity(int(syl1, 8) >> 1)
                    else:
                        syl1 = 0

                    if syl0:
                        syl0 = add_parity(int(syl0, 8))
                    else:
                        syl0 = 0
                    word = (syl0 << 14) | syl1

                else:
                    word = int(syls, 8)
                    w1 = add_parity(word & 0o37776)
                    w2 = add_parity((word >> 13) & 0o37776)
                    word = (w1 << 14) | w2

                addr = sector*256 + loc + i
                data[mod][addr] = word
                if duplex:
                    data[mod+1][addr] = word

    for mod in range(8):
        with open(output_dir / f'module{mod}.mem', 'w') as f:
            for word in data[mod]:
                f.write(f'{word:07X}\n')
def main():
    parser = argparse.ArgumentParser(description='Translate yaASM.py octal TSVs to LVDC module .mem images')
    parser.add_argument('tsv', type=pathlib.Path, help='Path to yaASM.py octal TSV')
    parser.add_argument('-o', '--output', type=pathlib.Path, required=True, help='Directory to write module .mem images to')
    args = parser.parse_args()

    translate_tsv(args.tsv, args.output)

if __name__=='__main__':
    main()
