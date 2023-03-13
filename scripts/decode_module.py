#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_mod = '-'

while True:
    time = 0
    mod_type = 'I'

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
                if 'DM' in sig_name:
                    mod_type = 'D'
                signals[sig_name] = 0
            elif line.startswith('$dumpvars'):
                print('$name %sM' % mod_type)
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        mod_bit = [0, 0, 0, 0]
        for i in range(4):
            mod_bit[i] = signals['%sM%u' % (mod_type, i)]

        plex = '-S'
        m1 = 1
        if mod_bit[0]:
            m1 = 0
            if mod_bit[1]:
                plex = '-D'

        mod_num = (mod_bit[3] << 2) | (mod_bit[2] << 1) | m1
        mod = '%u%s' % (mod_num, plex)
        
        if mod != last_mod:
            print('#%u %s' % (time, mod))
            last_mod = mod


    print('$finish')
    sys.stdout.flush()
    dump_lines = []


