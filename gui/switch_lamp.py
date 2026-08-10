from qtpy.QtWidgets import QPushButton, QStyleOption, QStyle, QStylePainter, QStyleOptionButton, QSizePolicy
from qtpy.QtGui import QPainter, QPen, QColor, QFont
from qtpy.QtCore import Qt, QRectF

# This whole thing is incredibly janky and flimsy. Sorry.
class SwitchLamp(QPushButton):
    def __init__(self, parent, texts=[''], colors=[QColor(0,255,0)], toggle=0, split=' '):
        super().__init__(parent)
        if split not in ' -|+':
            raise RuntimeError('Invalid button split "%s"' % split)

        self._split = split
        if split in '-|':
            lights = 2
        elif split == '+':
            lights = 4
        else:
            lights = 1

        if len(texts) == 1:
            texts = texts * lights
        elif len(texts) != lights:
            raise RuntimeError('Text/button mismatch')
        self._texts = texts

        if len(colors) == 1:
            colors = colors * lights
        elif len(colors) != lights:
            raise RuntimeError('Color/button mismatch')
        self._colors = colors

        self._states = [False]*lights
        if toggle == 2:
            if lights == 4:
                self._states[3] = True
            elif lights == 2:
                self._states[1] = True
        elif toggle == 4:
            self._states[0] = True
        self._toggle = toggle

        self.setFixedSize(50, 50)
        self.setSizePolicy(QSizePolicy.Policy.Fixed, QSizePolicy.Policy.Fixed)
        self.setStyleSheet(
            '''
            QPushButton {
                border-style: outset;
                border-color: #c8c8c8 #a0a0a0 #808080 #c8c8c8;
                border-width: 2px;
            }
            QPushButton:pressed {
                border-style: inset;
                border-color: #a0a0a0 #a0a0a0 #c8c8c8 #c8c8c8;
            }
            '''
        )
        self.pressed.connect(self._pressed)
        self.released.connect(self._released)

    def setState(self, light, state):
        self._states[light] = state
        if self._split == '+':
            if self._toggle == 2 and light == 0:
                self._states[1] = not state
        self.update()

    def _pressed(self):
        if self._toggle == 4 or (len(self._states) == 2 and self._toggle == 2):
            self._states = self._states[-1:] + self._states[:-1]
        elif len(self._states) == 4 and self._toggle == 2:
            self._states[2] = not self._states[2]
            self._states[3] = not self._states[3]
        elif len(self._states) == 2 and self._toggle == 1:
            self._states[1] = not self._states[1]
        elif len(self._states) == 1:
            self._states[0] = not self._states[0]
        self.update()

    def _released(self):
        if len(self._states) == 1 and self._toggle == 0:
            self._states[0] = False
        self.update()

    def paintEvent(self, event):
        sp = QStylePainter(self)
        opt = QStyleOptionButton()
        self.initStyleOption(opt)
        sp.drawControl(QStyle.CE_PushButton, opt)

        p = QPainter(self)
        p.setRenderHint(QPainter.Antialiasing)

        bw = 2
        x = bw
        y = bw
        w = self.width() - 2*bw
        h = self.height() - 2*bw

        if self._split == '+':
            rects = [
                QRectF(x, y, w/2, h/2),
                QRectF(x+w/2, y, w/2, h/2),
                QRectF(x+w/2, y+h/2, w/2, h/2),
                QRectF(x, y+h/2, w/2, h/2),
            ]
        elif self._split == '-':
            rects = [
                QRectF(x, y, w, h/2),
                QRectF(x, y+h/2, w, h/2),
            ]
        elif self._split == '|':
            rects = [
                QRectF(x, y, w/2, h),
                QRectF(x+w/2, y, w/2, h),
            ]
        else:
            rects = [QRectF(x, y, w, h)]

        colors = self._colors[:]
        for i,state in enumerate(self._states):
            if not state:
                colors[i] = colors[i].darker(255)
            if self.isDown() and self._toggle != 0:
                colors[i] = colors[i].darker(132)

            p.fillRect(rects[i], colors[i])

        if self._split in '-+':
            p.drawLine(x, y+h/2, x+w, y+h/2)
        if self._split in '|+':
            p.drawLine(x+w/2, y, x+w/2, y+h)

        font = self.font()
        font.setBold(True)
        font.setPointSize(8)
        pointsize = font.pointSizeF()
        p.setPen(QColor(0,0,0))
        p.setFont(font)

        for i,t in enumerate(self._texts):
            factor = max(0.25, min(1.25, w / p.fontMetrics().width(t)))
            font.setPointSizeF(pointsize*factor)
            p.setFont(font)
            p.drawText(rects[i], Qt.AlignCenter, t)
