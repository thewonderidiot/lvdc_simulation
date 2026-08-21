from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QFrame
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt
from switch_lamp import Lamp3Right

class DataParity(QWidget):
    def __init__(self, parent):
        super().__init__(parent)

        # Set up the UI
        self._setup_ui()

    def setComputerSyl0Parity(self, bra, brb):
        self._syl0.setState(0, bra)
        self._syl0.setState(2, brb)

    def setComputerSyl1Parity(self, bra, brb):
        self._syl1.setState(0, bra)
        self._syl1.setState(2, brb)

    def setCommandSyl0Parity(self, parity):
        self._syl0.setState(1, parity)

    def setCommandSyl1Parity(self, parity):
        self._syl1.setState(1, parity)

    def _setup_ui(self):
        self.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        layout.setAlignment(Qt.AlignCenter)

        label = QLabel('PARITY BIT', self)
        label.setAlignment(Qt.AlignCenter)
        label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = label.font()
        font.setPointSize(8)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 4, Qt.AlignCenter)

        self._comp_label = QLabel('COMPUTER ', self)
        self._comp_label.setAlignment(Qt.AlignLeft)
        self._comp_label.setFont(font)
        layout.addWidget(self._comp_label, 1, 0)

        self._cmd_label = QLabel(' COMMAND', self)
        self._cmd_label.setAlignment(Qt.AlignRight)
        self._cmd_label.setFont(font)
        layout.addWidget(self._cmd_label, 3, 3)

        self._syl1 = Lamp3Right(self, text=['BRA', 'S\nY\nL\n1', 'BRB'], color=[QColor(0,255,0), QColor(255,0,0), QColor(0,255,0)])
        layout.addWidget(self._syl1, 2, 1)
        self._syl0 = Lamp3Right(self, text=['BRA', 'S\nY\nL\n0', 'BRB'], color=[QColor(0,255,0), QColor(255,0,0), QColor(0,255,0)])
        layout.addWidget(self._syl0, 2, 2)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(255,255,255))
        comp_geom = self._comp_label.geometry()
        cmd_geom = self._cmd_label.geometry()
        syl0_geom = self._syl0.geometry()
        syl1_geom = self._syl1.geometry()

        line_h = comp_geom.center().y()
        line_r = syl0_geom.center().x() - syl0_geom.width()/4
        line_l = syl1_geom.center().x() - syl0_geom.width()/4
        painter.drawLine(comp_geom.right(), line_h, line_r, line_h)
        painter.drawLine(line_r, line_h, line_r, syl0_geom.top())
        painter.drawLine(line_l, line_h, line_l, syl1_geom.top())

        line_h = cmd_geom.center().y()
        line_r = syl0_geom.center().x() + syl0_geom.width()/4
        line_l = syl1_geom.center().x() + syl0_geom.width()/4
        painter.drawLine(line_l, line_h, cmd_geom.left(), line_h)
        painter.drawLine(line_r, line_h, line_r, syl0_geom.bottom())
        painter.drawLine(line_l, line_h, line_l, syl1_geom.bottom())
