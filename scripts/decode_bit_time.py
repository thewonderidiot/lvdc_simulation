#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_bit_time = 0
while True:
    time = 0
    bit_time = 0

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
                print('$name BitTime')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        if signals['G1V'] and not signals['G2V']:
            bit_time = 1
        elif signals['G2V'] and not signals['G3V']:
            bit_time = 2
        elif signals['G3V'] and not signals['G4V']:
            bit_time = 3
        elif signals['G4V'] and not signals['G5V']:
            bit_time = 4
        elif signals['G5V'] and not signals['G6V']:
            bit_time = 5
        elif signals['G6V'] and not signals['G7V']:
            bit_time = 6
        elif signals['G7V'] and signals['G1V']:
            bit_time = 7
        elif not signals['G1V'] and signals['G2V']:
            bit_time = 8
        elif not signals['G2V'] and signals['G3V']:
            bit_time = 9
        elif not signals['G3V'] and signals['G4V']:
            bit_time = 10
        elif not signals['G4V'] and signals['G5V']:
            bit_time = 11
        elif not signals['G5V'] and signals['G6V']:
            bit_time = 12
        elif not signals['G6V'] and signals['G7V']:
            bit_time = 13
        elif not signals['G7V'] and not signals['G1V']:
            bit_time = 14

        if bit_time != last_bit_time:
            print('#%u %u' % (time, bit_time))
            last_bit_time = bit_time

    print('$finish')
    sys.stdout.flush()
    dump_lines = []
