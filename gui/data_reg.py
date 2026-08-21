from qtpy.QtWidgets import QGridLayout, QHBoxLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2Vertical, Lamp

class DataReg(QWidget):
    valueChanged = Signal(int)

    def __init__(self, parent):
        super().__init__(parent)

        # Set up the UI
        self._setup_ui()
        self._cmd_value = 0

    def setComputerValue(self, value):
        for i in range(26):
            self._switches[i].setState(0, (value & (1 << i)) != 0)

    def setCommandValue(self, value):
        self._cmd_value = value
        for i in range(26):
            self._switches[i].setState(1, (value & (1 << i)) != 0)

    def _setup_ui(self):
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setVerticalSpacing(0)
        layout.setHorizontalSpacing(30)
        layout.setAlignment(Qt.AlignCenter)

        self._switches = []
        for i in range(26):
            text = 'S\nI\nG\nN' if i == 0 else '%u' % i
            sw = SwitchLamp2Vertical(self, text=text, color=[QColor(0,255,0), QColor(255,0,0)])
            sw.pressed.connect(lambda b=i: self._switch_pressed(25-b))
            self._switches.insert(0, sw)
            layout.addWidget(sw, 1 + i%3, int(i/3))

        lamp = Lamp(self, text='')
        layout.addWidget(lamp, 3, 8)

        cont = QWidget(self)
        layout.addWidget(cont, 0, 3, 1, 2)
        cont_layout = QHBoxLayout(cont)
        cont.setLayout(cont_layout)
        cont.setStyleSheet('background: transparent;') 
        cont_layout.setAlignment(Qt.AlignLeft)
        cont_layout.setSpacing(0)
        cont_layout.setContentsMargins(0,0,0,0)
        cont_layout.addSpacing(lamp.width()/2-2)

        self._comp_label = QLabel('COMPUTER', self)
        self._comp_label.setAlignment(Qt.AlignLeft)
        font = self._comp_label.font()
        font.setPointSize(8)
        font.setBold(True)
        self._comp_label.setFont(font)
        cont_layout.addWidget(self._comp_label)

        cont = QWidget(self)
        layout.addWidget(cont, 4, 3, 1, 2)
        cont_layout = QHBoxLayout(cont)
        cont.setLayout(cont_layout)
        cont.setStyleSheet('background: transparent;') 
        cont_layout.setAlignment(Qt.AlignLeft)
        cont_layout.setSpacing(0)
        cont_layout.setContentsMargins(0,0,0,0)
        cont_layout.addSpacing(lamp.width()-2)

        self._cmd_label = QLabel('COMMAND', self)
        self._cmd_label.setAlignment(Qt.AlignCenter)
        self._cmd_label.setFont(font)
        cont_layout.addWidget(self._cmd_label)

    def _switch_pressed(self, bit):
        value = self._cmd_value ^ (1 << bit)
        self.valueChanged.emit(value)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(255,255,255))
        sign_geom = self._switches[-1].geometry()
        comp_geom = self._comp_label.geometry()
        comp_cont_geom = self._comp_label.parent().geometry()
        comp_y = comp_cont_geom.center().y()
        line_l = sign_geom.center().x() - sign_geom.width()/4
        line_r = comp_cont_geom.left() + comp_geom.left()-2
        painter.drawLine(line_l, comp_y, line_r, comp_y)

        s25_geom = self._switches[0].geometry()
        line_r = s25_geom.center().x() - s25_geom.width()/4
        line_l = comp_cont_geom.left() + comp_geom.right()+2
        painter.drawLine(line_l, comp_y, line_r, comp_y)

        cmd_geom = self._cmd_label.geometry()
        cmd_cont_geom = self._cmd_label.parent().geometry()
        cmd_y = cmd_cont_geom.center().y()
        line_l = sign_geom.center().x() + sign_geom.width()/4
        line_r = cmd_cont_geom.left() + cmd_geom.left()-2
        painter.drawLine(line_l, cmd_y, line_r, cmd_y)

        line_r = s25_geom.center().x() + s25_geom.width()/4
        line_l = cmd_cont_geom.left() + cmd_geom.right()+2
        painter.drawLine(line_l, cmd_y, line_r, cmd_y)

        sw_top = self._switches[0].geometry().top()
        sw_bottom = self._switches[2].geometry().bottom()
        for col in range(9):
            sw_geom = self._switches[col*3].geometry()
            x = sw_geom.center().x() - sw_geom.width()/4
            painter.drawLine(x, comp_y, x, sw_top)
            x = sw_geom.center().x() + sw_geom.width()/4
            painter.drawLine(x, cmd_y, x, sw_bottom)
