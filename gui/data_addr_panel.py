from qtpy.QtWidgets import QFrame, QHBoxLayout, QVBoxLayout, QWidget, QLabel
from qtpy.QtGui import QColor
from qtpy.QtCore import Qt
from module_reg import ModuleReg
from sector_reg import SectorReg
from op_reg import OpReg
from switch_lamp import Lamp2Horizontal
import usb_msg

class DataAddrPanel(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)

    def _setup_ui(self):
        self.setFrameStyle(QFrame.Panel | QFrame.Raised)
        layout = QVBoxLayout(self)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        self.setLayout(layout)

        label = QLabel('DATA ADDRESS')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label)

        row = QWidget(self)
        layout.addWidget(row)
        row_layout = QHBoxLayout(row)
        row.setLayout(row_layout)
        row_layout.addSpacing(40)

        parity_bit = QWidget(self)
        row_layout.addWidget(parity_bit)
        parity_layout = QVBoxLayout(parity_bit)
        parity_bit.setLayout(parity_layout)
        parity_layout.setSpacing(0)
        parity_layout.setContentsMargins(0,0,0,0)

        label = QLabel('PARITY BIT', parity_bit)
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(8)
        font.setBold(True)
        label.setFont(font)
        parity_layout.addWidget(label, 0, Qt.AlignCenter)
        self._parity = Lamp2Horizontal(parity_bit, text=['BRA', 'BRB'], color=QColor(0,255,0))
        parity_layout.addWidget(self._parity, 0, Qt.AlignCenter)

        row_layout.addSpacing(20)

        self._mod_reg = ModuleReg(self, 'DM')
        row_layout.addWidget(self._mod_reg)

        row_layout.addSpacing(50)

        self._sec_reg = SectorReg(self, 'DS', has_syl=False)
        row_layout.addWidget(self._sec_reg)
        row_layout.addStretch()

        row = QWidget(self)
        layout.addWidget(row)
        row_layout = QHBoxLayout(row)
        row.setLayout(row_layout)
        self._op_reg = OpReg(self)
        row_layout.addWidget(self._op_reg)

    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterSSMSR):
            self._mod_reg.setValue(msg.dm)
            self._mod_reg.setDuplex(msg.dupdn)

            self._sec_reg.setValue(msg.ds)
        elif isinstance(msg, usb_msg.RegisterOP_A):
            self._parity.setState(0, msg.bra)
            self._parity.setState(1, msg.brb)
            self._op_reg.setOpcode(msg.op)
            self._op_reg.setOperand(msg.a)
