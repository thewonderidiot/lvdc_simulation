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
    last_mod = '-'
    mod_type = 'i'

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
                if 'dm' in sig_name:
                    mod_type = 'd'
                signals[sig_name] = 0
            elif line.startswith('$dumpvars'):
                print('$name %sM' % mod_type.upper())
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        if line.startswith('b'):
            parts = line.split()
            val = '0' + parts[0]
            sig_num = parts[1]
        else:
            val = line[0]
            sig_num = line[1]

        state = int(val,0) if val not in 'zx' else 0
        sig_name = signal_names[int(sig_num)]
        signals[sig_name] = state

        dup = 'dup%sn' % mod_type
        
        plex = '-D' if signals[dup] else '-S'
        mod = '%u%s' % (signals[mod_type+'m[3:1]'], plex)
        
        if mod != last_mod:
            print('#%u %s' % (time, mod))
            last_mod = mod


    print('$finish')
    sys.stdout.flush()
    dump_lines = []


