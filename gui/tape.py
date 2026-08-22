import csv
from collections import namedtuple

Word = namedtuple('Word', ['dm', 'ds', 'a', 'dupdn', 'word'])

class Tape:
    def __init__(self, filename):
        self._tape_idx = 0
        self._reverse = False
        with open(filename, newline='') as tsv:
            self._load_tape(tsv)

    def set_reverse(self, reverse=False):
        self._reverse = reverse

    def peek(self):
        return self._data[self._tape_idx]

    def seek(self, idx):
        self._tape_idx = idx
        return self.peek()

    def get_index(self):
        return self._tape_idx

    def rewind(self):
        self._tape_idx = 0

    def verify(self, idx, word):
        check = self._data[idx]
        return word.dm == check.dm and word.dupdn == check.dupdn and word.ds == check.ds and word.a == check.a and word.word == check.word

    def read(self):
        if self._tape_idx < 0 or self._tape_idx >= len(self._data):
            word = None
        else:
            word = self._data[self._tape_idx]

        if self._reverse:
            self._tape_idx = max(-1, self._tape_idx - 1)
        else:
            self._tape_idx = min(len(self._data), self._tape_idx + 1)

        return word

    def _load_tape(self, tsv):
        dm = 0
        ds = 0
        loc = 0

        self._data = []

        reader = csv.reader(tsv, delimiter='\t')
        for row in reader:
            if row[0].startswith('#'):
                continue
            if row[0] == 'SECTOR':
                dm = int(row[1], 8)
                ds = int(row[2], 8)
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
                        syl1 = int(syl1, 8)
                    else:
                        syl1 = 0

                    if syl0:
                        syl0 = int(syl0, 8)
                    else:
                        syl0 = 0

                    word = (syl1 << 11) | (syl0 >> 1)

                else:
                    word = int(syls, 8) >> 1

                self._data.append(Word(dm, ds, loc+i, duplex, word))
