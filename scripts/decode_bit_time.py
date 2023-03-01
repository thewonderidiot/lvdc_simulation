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
                print('$name bit_time')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        if signals['g1v'] and not signals['g2v']:
            bit_time = 1
        elif signals['g2v'] and not signals['g3v']:
            bit_time = 2
        elif signals['g3v'] and not signals['g4v']:
            bit_time = 3
        elif signals['g4v'] and not signals['g5v']:
            bit_time = 4
        elif signals['g5v'] and not signals['g6v']:
            bit_time = 5
        elif signals['g6v'] and not signals['g7v']:
            bit_time = 6
        elif signals['g7v'] and signals['g1v']:
            bit_time = 7
        elif not signals['g1v'] and signals['g2v']:
            bit_time = 8
        elif not signals['g2v'] and signals['g3v']:
            bit_time = 9
        elif not signals['g3v'] and signals['g4v']:
            bit_time = 10
        elif not signals['g4v'] and signals['g5v']:
            bit_time = 11
        elif not signals['g5v'] and signals['g6v']:
            bit_time = 12
        elif not signals['g6v'] and signals['g7v']:
            bit_time = 13
        elif not signals['g7v'] and not signals['g1v']:
            bit_time = 14

        if bit_time != last_bit_time:
            print('#%u %u' % (time, bit_time))
            last_bit_time = bit_time

    print('$finish')
    sys.stdout.flush()
    dump_lines = []
