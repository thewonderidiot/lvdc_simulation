#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_ic = 0
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
                print('$name InstCtr')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        if signals['PAV'] and signals['G2V'] and (not signals['G1V']) and signals['XF']:
            ic = 0
            for i in range(1,9):
                ic |= signals['TR%uV' % i] << (8-i)

        if ic != last_ic:
            print('#%u %u' % (time, ic))
            last_ic = ic

    print('$finish')
    sys.stdout.flush()
    dump_lines = []


