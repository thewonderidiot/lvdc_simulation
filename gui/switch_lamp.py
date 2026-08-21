from qtpy.QtWidgets import QPushButton, QStyleOption, QStyle, QStylePainter, QStyleOptionButton, QSizePolicy
from qtpy.QtGui import QPainter, QPen, QColor, QFont
from qtpy.QtCore import Qt, QRectF, QLineF

class Lamp(QPushButton):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent)

        self.setEnabled(False)
        self.setFixedSize(50, 50)
        self.setSizePolicy(QSizePolicy.Policy.Fixed, QSizePolicy.Policy.Fixed)
        self.setStyleSheet(
            '''
            QPushButton {
                border-style: outset;
                border-color: #000000;
                border-width: 2px;
            }
            QPushButton:pressed {
                border-style: inset;
                border-color: #000000;
            }
            '''
        )

        if not isinstance(text, list):
            text = [text]
        if not isinstance(color, list):
            color = [color]
        self._texts = text
        self._colors = color
        self._create_geometry()
        self._states = [False]*len(self._texts)

    def _create_geometry(self):
        bw = 2
        x = bw
        y = bw
        w = self.width() - 2*bw
        h = self.height() - 2*bw
        self._rects = [QRectF(x, y, w, h)]
        self._lines = []

    def setState(self, light, state):
        if light > len(self._states):
            raise RuntimeError('Invalid light %u' % light)
        self._states[light] = state
        self.update()

    def getState(self, light):
        return self._states[light]

    def paintEvent(self, event):
        sp = QStylePainter(self)
        opt = QStyleOptionButton()
        self.initStyleOption(opt)
        sp.drawControl(QStyle.CE_PushButton, opt)

        p = QPainter(self)
        p.setRenderHint(QPainter.Antialiasing)

        colors = self._colors[:]
        for i,state in enumerate(self._states):
            if not state:
                colors[i] = colors[i].darker(255)

            if self.isDown():
                colors[i] = colors[i].darker(132)

            p.fillRect(self._rects[i], colors[i])
    
        p.setPen(QColor(0,0,0))
        for line in self._lines:
            p.drawLine(line)

        font = self.font()
        font.setBold(True)
        font.setPointSize(8)
        pointsize = font.pointSizeF()
        p.setFont(font)

        for i,t in enumerate(self._texts):
            lines = t.split('\n')
            width = max(1, p.fontMetrics().width(max(lines, key=lambda l: len(l.strip('~')))))
            factor = max(0.25, min(1.2, self.width() / width))*0.9
            font.setPointSizeF(pointsize*factor)
            p.setFont(font)

            r_x = self._rects[i].x()
            r_y = self._rects[i].y()
            r_h = self._rects[i].height()
            r_w = self._rects[i].width()
            y_inc = r_h/len(lines)
            for j,line in enumerate(lines):
                rect = QRectF(r_x, r_y + j*y_inc, r_w, y_inc)
                if line.startswith('~'):
                    line = line[1:]
                    bound = p.boundingRect(rect, Qt.AlignCenter, line)
                    p.drawLine(bound.left(), bound.top(), bound.right(), bound.top())
                p.drawText(rect, Qt.AlignCenter, line)

class SwitchLamp(Lamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)
        self.setEnabled(True)

class SwitchLampMomentary(SwitchLamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)

        self.pressed.connect(self._pressed)
        self.released.connect(self._released)

    def setState(self, light, state):
        pass

    def _pressed(self):
        self._states[0] = True
        self.update()

    def _released(self):
        self._states[0] = False
        self.update()

class SwitchLampToggle(SwitchLamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)

        self.pressed.connect(self._pressed)

    def setState(self, light, state):
        pass

    def _pressed(self):
        self._states[0] = not self._states[0]

class Lamp2Vertical(Lamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        if not isinstance(text, list):
            text = [text]
        if len(text) == 1:
            text = 2*text
        if not isinstance(color, list):
            color = [color]
        if len(color) == 1:
            color = 2*color
        super().__init__(parent, text=text, color=color)

    def _create_geometry(self):
        bw = 2
        x = bw
        y = bw
        w = self.width() - 2*bw
        h = self.height() - 2*bw
        self._rects = [
            QRectF(x, y, w/2, h),
            QRectF(x+w/2, y, w/2, h),
        ]
        self._lines = [
            QLineF(x+w/2, y, x+w/2, y+h)
        ]

class Lamp2Horizontal(Lamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        if not isinstance(text, list):
            text = [text]
        if len(text) == 1:
            text = 2*text
        if not isinstance(color, list):
            color = [color]
        if len(color) == 1:
            color = 2*color
        super().__init__(parent, text=text, color=color)

    def _create_geometry(self):
        bw = 2
        x = bw
        y = bw
        w = self.width() - 2*bw
        h = self.height() - 2*bw
        self._rects = [
            QRectF(x, y, w, h/2),
            QRectF(x, y+h/2, w, h/2),
        ]
        self._lines = [
            QLineF(x, y+h/2, x+w, y+h/2)
        ]

class SwitchLamp2Horizontal(Lamp2Horizontal):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)
        self.setEnabled(True)

class SwitchLamp2HorizontalToggle(Lamp2Horizontal):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)
        self.setEnabled(True)
        self.pressed.connect(self._pressed)
        self._states = [False, True]

    def _pressed(self):
        self._states[0] = not self._states[0]
        self._states[1] = not self._states[0]
        self.update()

class SwitchLamp2Vertical(Lamp2Vertical):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)
        self.setEnabled(True)

class Lamp3Right(Lamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        if not isinstance(text, list):
            text = [text]
        if len(text) == 1:
            text = 3*text
        if not isinstance(color, list):
            color = [color]
        if len(color) == 1:
            color = 3*color
        super().__init__(parent, text=text, color=color)

    def _create_geometry(self):
        bw = 2
        x = bw
        y = bw
        w = self.width() - 2*bw
        h = self.height() - 2*bw
        self._rects = [
            QRectF(x, y, w/2, h/2),
            QRectF(x+w/2, y, w/2, h),
            QRectF(x, y+h/2, w/2, h/2),
        ]
        self._lines = [
            QLineF(x+w/2, y, x+w/2, y+h),
            QLineF(x, y+h/2, x+w/2, y+h/2),
        ]

class Lamp4(Lamp):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        if not isinstance(text, list):
            text = [text]
        if len(text) == 1:
            text = 4*text
        if not isinstance(color, list):
            color = [color]
        if len(color) == 1:
            color = 4*color
        super().__init__(parent, text=text, color=color)

    def _create_geometry(self):
        bw = 2
        x = bw
        y = bw
        w = self.width() - 2*bw
        h = self.height() - 2*bw
        self._rects = [
            QRectF(x, y, w/2, h/2),
            QRectF(x+w/2, y, w/2, h/2),
            QRectF(x+w/2, y+h/2, w/2, h/2),
            QRectF(x, y+h/2, w/2, h/2),
        ]
        self._lines = [
            QLineF(x, y+h/2, x+w, y+h/2),
            QLineF(x+w/2, y, x+w/2, y+h),
        ]

class SwitchLamp4(Lamp4):
    def __init__(self, parent, text='', color=QColor(255,255,255)):
        super().__init__(parent, text=text, color=color)
        self.setEnabled(True)
