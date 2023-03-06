#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_op = '-'

op_map = {
    0b0000: 'HOP',
    0b0001: 'MPY',
    0b0010: 'SUB',
    0b0011: 'DIV',
    0b0100: 'TNZ',
    0b0101: 'MPH',
    0b0110: 'AND',
    0b0111: 'ADD',
    0b1000: 'TRA',
    0b1001: 'XOR',
    0b1010: 'PIO',
    0b1011: 'STO',
    0b1100: 'TMI',
    0b1101: 'RSU',
    0b1110: 'SHF', # Or CDS or EXM
    0b1111: 'CLA',
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
            opcode |= signals['OP%uV' % i] << (i-1)

        op = op_map[opcode]

        if op != last_op:
            print('#%u %s' % (time, op))
            last_op = op

    print('$finish')
    sys.stdout.flush()
    dump_lines = []


