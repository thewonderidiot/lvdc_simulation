#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_op = '-'

op_map = {
    0b000000: 'HOP',
    0b000100: 'MPY',
    0b001000: 'SUB',
    0b001100: 'DIV',
    0b010000: 'TNZ',
    0b010100: 'MPH',
    0b011000: 'AND',
    0b011100: 'ADD',
    0b100000: 'TRA',
    0b100100: 'XOR',
    0b101000: 'PIO',
    0b101100: 'STO',
    0b110000: 'TMI',
    0b110100: 'RSU',
    0b111000: 'CDS',
    0b111010: 'SHF',
    0b111011: 'EXM',
    0b111100: 'CLA',
}

while True:
    time = 0
    ic = 0

    # Buffer up all the lines we need. Going on the fly is too slow
    line = sys.stdin.readline()
    if not line:
        break
    if not line.startswith('$comment data_end'):
        dump_lines.append(line)
        continue

    for line in dump_lines:
        if line.startswith('$'):
            if line.startswith('$var'):
                idx = 2
                if 'var wire' in line:
                    idx += 1
                toks = line.split()
                sig_num = int(toks[idx])
                
                sig_name = toks[idx+1]
                signal_names[sig_num] = sig_name
                signals[sig_name] = 0
            elif line.startswith('$dumpvars'):
                print('$name Opcode')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        opcode = 0
        for i in range(1,5):
            opcode |= signals['OP%uV' % i] << (i+1)

        # if opcode == 0b111000:
        #     opcode |= signals['A9V'] << 1
        #     if opcode == 0b111010:
        #         opcode |= signals['A8V']

        op = op_map[opcode]

        if op != last_op:
            print('#%u %s' % (time, op))
            last_op = op

    print('$finish')
    sys.stdout.flush()
    dump_lines = []


