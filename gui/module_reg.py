from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2ToggleBottom, SwitchLamp4ToggleBottom

class ModuleReg(QWidget):
    valueChanged = Signal(int, bool)

    def __init__(self, parent, text):
        super().__init__(parent)

        # Set up the UI
        self._setup_ui(text)

    def setValue(self, value):
        for i in range(3):
            self._switches[i].setState(0, (value & (1 << i)) != 0)

    def setDuplex(self, duplex):
        self._dup.setState(0, duplex)
        self._dup.setState(1, not duplex)

    def _setup_ui(self, text):
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        layout.setAlignment(Qt.AlignLeft)

        self._mod_label = QLabel('MODULE', self)
        self._mod_label.setAlignment(Qt.AlignCenter)
        self._mod_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = self._mod_label.font()
        font.setPointSize(8)
        font.setBold(True)
        self._mod_label.setFont(font)
        layout.addWidget(self._mod_label, 0, 1, 1, 4, Qt.AlignCenter)

        label = QLabel('COMPUTER', self)
        label.setAlignment(Qt.AlignLeft)
        label.setFont(font)
        layout.addWidget(label, 1, 0)

        label = QLabel('COMMAND', self)
        label.setAlignment(Qt.AlignLeft)
        label.setFont(font)
        layout.addWidget(label, 2, 0)

        self._switches = []
        for i in range(3):
            sw = SwitchLamp2ToggleBottom(self, text='%s%u' % (text, 3-i), color=[QColor(0,255,0), QColor(255,0,0)])
            sw.pressed.connect(self._switch_pressed)
            self._switches.insert(0, sw)
            layout.addWidget(sw, 1, 1+i, 2, 1)
        self._dup = SwitchLamp4ToggleBottom(self, text=['DX','SX','SX','DX'], color=[QColor(0,255,0), QColor(0,255,0), QColor(255,0,0), QColor(255,0,0)])
        self._dup.pressed.connect(self._switch_pressed)
        layout.addWidget(self._dup, 1, 4, 2, 1)

    def _switch_pressed(self):
        value = 0
        for i,sw in enumerate(self._switches):
            if sw.getState(1):
                value |= 1 << i
        self.valueChanged.emit(value, self._dup.getState(3))

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(255,255,255))
        mod_geom = self._mod_label.geometry()
        line_h = mod_geom.center().y()
        line_l = self._switches[2].geometry().left()
        line_r = self._dup.geometry().right()
        painter.drawLine(line_l, line_h, mod_geom.left()-2, line_h)
        painter.drawLine(mod_geom.right()+2, line_h, line_r, line_h)
        painter.drawLine(line_l, mod_geom.top(), line_l, mod_geom.bottom())
        painter.drawLine(line_r, mod_geom.top(), line_r, mod_geom.bottom())
