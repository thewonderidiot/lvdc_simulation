from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt
from switch_lamp import SwitchLamp2ToggleBottom

class AddrReg(QWidget):
    def __init__(self, parent):
        super().__init__(parent)

        # Set up the UI
        self._setup_ui()

    def setValue(self, value):
        for i in range(8):
            self._switches[i].setState(0, (value & (1 << i)) != 0)

    def _setup_ui(self):
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        layout.setAlignment(Qt.AlignLeft)

        self._addr_label = QLabel('ADDRESS', self)
        self._addr_label.setAlignment(Qt.AlignCenter)
        self._addr_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = self._addr_label.font()
        font.setPointSize(8)
        font.setBold(True)
        self._addr_label.setFont(font)
        layout.addWidget(self._addr_label, 0, 1, 1, 8, Qt.AlignCenter)

        label = QLabel('COMPUTER', self)
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, 1, 0)

        label = QLabel('COMMAND', self)
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, 2, 0)

        self._switches = []
        for i in range(8):
            sw = SwitchLamp2ToggleBottom(self, text='A%u' % (8-i), color=[QColor(0,255,0), QColor(255,0,0)])
            self._switches.insert(0, sw)
            layout.addWidget(sw, 1, 1+i, 2, 1)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(0,0,0))
        addr_geom = self._addr_label.geometry()
        line_h = addr_geom.center().y()
        line_l = self._switches[7].geometry().left()
        line_r = self._switches[0].geometry().right()
        painter.drawLine(line_l, line_h, addr_geom.left()-2, line_h)
        painter.drawLine(addr_geom.right()+2, line_h, line_r, line_h)
        painter.drawLine(line_l, addr_geom.top(), line_l, addr_geom.bottom())
        painter.drawLine(line_r, addr_geom.top(), line_r, addr_geom.bottom())
