#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_phase = '-'
while True:
    time = 0
    phase = '-'

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
                print('$name phase')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        if signals['pav'] and not signals['pbv']:
            phase = 'A'
        elif signals['pbv'] and not signals['pcv']:
            phase = 'B'
        elif signals['pcv'] and not signals['pav']:
            phase = 'C'

        if phase != last_phase:
            print('#%u %s' % (time, phase))
            last_phase = phase

    print('$finish')
    sys.stdout.flush()
    dump_lines = []


