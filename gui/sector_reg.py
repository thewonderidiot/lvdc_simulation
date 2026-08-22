from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2Horizontal, SwitchLamp4

class SectorReg(QWidget):
    valueChanged = Signal(int, int)

    def __init__(self, parent, text, has_syl=False):
        super().__init__(parent)
        self._has_syl = has_syl

        # Set up the UI
        self._setup_ui(text, has_syl)
        self._cmd_value = 0
        self._cmd_syl = 0

    def setComputerValue(self, value):
        for i in range(4):
            self._switches[i].setState(0, (value & (1 << i)) != 0)

    def setCommandValue(self, value):
        self._cmd_value = value
        for i in range(4):
            self._switches[i].setState(1, (value & (1 << i)) != 0)

    def setComputerSyl(self, syl):
        if self._has_syl:
            self._syl.setState(0, syl ^ 1)
            self._syl.setState(1, syl)

    def setCommandSyl(self, syl):
        self._cmd_syl = syl
        if self._has_syl:
            self._syl.setState(3, syl ^ 1)
            self._syl.setState(2, syl)

    def _setup_ui(self, text, has_syl):
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        layout.setAlignment(Qt.AlignLeft)

        self._sec_label = QLabel('SECTOR', self)
        self._sec_label.setAlignment(Qt.AlignCenter)
        self._sec_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = self._sec_label.font()
        font.setPointSize(8)
        font.setBold(True)
        self._sec_label.setFont(font)
        layout.addWidget(self._sec_label, 0, 1, 1, 4, Qt.AlignCenter)

        if has_syl:
            self._syl_label = QLabel('SYL', self)
            self._syl_label.setAlignment(Qt.AlignCenter)
            self._syl_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
            self._syl_label.setFont(font)
            layout.addWidget(self._syl_label, 0, 0, Qt.AlignCenter)

            self._syl = SwitchLamp4(self, text=['0','1','1','0'], color=[QColor(0,255,0), QColor(0,255,0), QColor(255,0,0), QColor(255,0,0)])
            self._syl.pressed.connect(self._syl_switch_pressed)
            layout.addWidget(self._syl, 1, 0)

        self._switches = []
        for i in range(4):
            bit = 4-i
            sw = SwitchLamp2Horizontal(self, text='%s%u' % (text, bit), color=[QColor(0,255,0), QColor(255,0,0)])
            sw.pressed.connect(lambda b=bit: self._sec_switch_pressed(b-1))
            self._switches.insert(0, sw)
            layout.addWidget(sw, 1, i+1)

    def _syl_switch_pressed(self):
        syl = self._cmd_syl ^ 1
        self.valueChanged.emit(self._cmd_value, syl)

    def _sec_switch_pressed(self, bit):
        value = self._cmd_value ^ (1 << bit)
        self.valueChanged.emit(value, self._cmd_syl)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(255,255,255))
        sec_geom = self._sec_label.geometry()
        line_h = sec_geom.center().y()
        line_l = self._switches[3].geometry().left()
        line_r = self._switches[0].geometry().right()
        painter.drawLine(line_l, line_h, sec_geom.left()-2, line_h)
        painter.drawLine(sec_geom.right()+2, line_h, line_r, line_h)
        painter.drawLine(line_l, sec_geom.top(), line_l, sec_geom.bottom())
        painter.drawLine(line_r, sec_geom.top(), line_r, sec_geom.bottom())

        if self._has_syl:
            syl_geom = self._syl_label.geometry()
            line_r = line_l
            line_l = self._syl.geometry().left()

            painter.drawLine(line_l, line_h, syl_geom.left()-2, line_h)
            painter.drawLine(syl_geom.right()+2, line_h, line_r, line_h)
            painter.drawLine(line_l, sec_geom.top(), line_l, sec_geom.bottom())
