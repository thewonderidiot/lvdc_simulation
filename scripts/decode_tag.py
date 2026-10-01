#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_tag = '-'
while True:
    time = 0
    tag = '-'

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
                print('$name Tag')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        t = ((signals['MOD2']  << 11) |
             (signals['MOD1']  << 10) |
             (signals['RT1X']  <<  9) |
             (signals['TAG8X'] <<  8) |
             (signals['TAG1X'] <<  7) |
             (signals['TAG2X'] <<  6) |
             (signals['TAG7X'] <<  5) |
             (signals['TAG6X'] <<  4) |
             (signals['TAG5X'] <<  3) |
             (signals['TAG4X'] <<  2) |
             (signals['TAG3X'] <<  1) |
             (signals['MOD3']  <<  0))

        if signals['TAG8X']:
            tag = '%04o' % t
        else:
            tag = '%03o' % ((t & 0o776) >> 1)


        if tag != last_tag:
            print('#%u %s' % (time, tag))
            last_tag = tag

    print('$finish')
    sys.stdout.flush()
    dump_lines = []


