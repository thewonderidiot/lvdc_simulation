from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2ToggleBottom

class OpReg(QWidget):
    valueChanged = Signal(int, int)

    def __init__(self, parent):
        super().__init__(parent)

        # Set up the UI
        self._setup_ui()

    def setComputerOpcode(self, value):
        for i in range(4):
            self._opcode_switches[i].setState(0, (value & (1 << i)) != 0)

    def setCommandOpcode(self, value):
        for i in range(4):
            self._opcode_switches[i].setState(1, (value & (1 << i)) != 0)

    def setComputerOperand(self, value):
        for i in range(9):
            self._operand_switches[i].setState(0, (value & (1 << i)) != 0)

    def setCommandOperand(self, value):
        for i in range(9):
            self._operand_switches[i].setState(1, (value & (1 << i)) != 0)

    def _setup_ui(self):
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        layout.setAlignment(Qt.AlignLeft)

        self._opcode_label = QLabel('OP CODE', self)
        self._opcode_label.setAlignment(Qt.AlignCenter)
        self._opcode_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = self._opcode_label.font()
        font.setPointSize(8)
        font.setBold(True)
        self._opcode_label.setFont(font)
        layout.addWidget(self._opcode_label, 0, 1, 1, 4, Qt.AlignCenter)

        self._operand_label = QLabel('OPERAND', self)
        self._operand_label.setAlignment(Qt.AlignCenter)
        self._operand_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        self._operand_label.setFont(font)
        layout.addWidget(self._operand_label, 0, 5, 1, 9, Qt.AlignCenter)

        label = QLabel('COMTR', self)
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, 1, 0)

        label = QLabel('COMD', self)
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, 2, 0)

        self._opcode_switches = []
        for i in range(4):
            sw = SwitchLamp2ToggleBottom(self, text='OP%u' % (4-i), color=[QColor(0,255,0), QColor(255,0,0)])
            sw.pressed.connect(self._switch_pressed)
            self._opcode_switches.insert(0, sw)
            layout.addWidget(sw, 1, 1+i, 2, 1)

        self._operand_switches = []
        for i in range(9):
            sw = SwitchLamp2ToggleBottom(self, text='OA%u' % (9-i), color=[QColor(0,255,0), QColor(255,0,0)])
            sw.pressed.connect(self._switch_pressed)
            self._operand_switches.insert(0, sw)
            layout.addWidget(sw, 1, 5+i, 2, 1)

    def _switch_pressed(self):
        opcode = 0
        operand = 0
        for i,sw in enumerate(self._opcode_switches):
            if sw.getState(1):
                opcode |= 1 << i
        for i,sw in enumerate(self._operand_switches):
            if sw.getState(1):
                operand |= 1 << i
        self.valueChanged.emit(opcode, operand)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(255,255,255))
        opcode_geom = self._opcode_label.geometry()
        line_h = opcode_geom.center().y()
        line_l = self._opcode_switches[3].geometry().left()
        line_r = self._opcode_switches[0].geometry().right()
        painter.drawLine(line_l, line_h, opcode_geom.left()-2, line_h)
        painter.drawLine(opcode_geom.right()+2, line_h, line_r, line_h)
        painter.drawLine(line_l, opcode_geom.top(), line_l, opcode_geom.bottom())
        painter.drawLine(line_r, opcode_geom.top(), line_r, opcode_geom.bottom())
        operand_geom = self._operand_label.geometry()
        line_l = line_r
        line_r = self._operand_switches[0].geometry().right()
        painter.drawLine(line_l, line_h, operand_geom.left()-2, line_h)
        painter.drawLine(operand_geom.right()+2, line_h, line_r, line_h)
        painter.drawLine(line_r, opcode_geom.top(), line_r, opcode_geom.bottom())
