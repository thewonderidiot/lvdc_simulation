from qtpy.QtWidgets import QHBoxLayout, QVBoxLayout, QWidget, QLabel
from qtpy.QtGui import QColor
from qtpy.QtCore import Qt
from module_reg import ModuleReg
from sector_reg import SectorReg
from op_reg import OpReg
from switch_lamp import Lamp2Horizontal
import usb_msg

class DataAddrPanel(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)
        self.reset_command()

    def reset_command(self):
        self._dm_cmd = 0
        self._dupdn_cmd = False
        self._ds_cmd = 0
        self._op_cmd = 0
        self._a_cmd = 0
        self._mod_reg.setCommandValue(0)
        self._mod_reg.setCommandDuplex(0)
        self._sec_reg.setCommandValue(0)
        self._op_reg.setCommandOpcode(0)
        self._op_reg.setCommandOperand(0)
        self._send_cmd()

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            QLabel {
                color: #ffffff;
            }
            DataAddrPanel {
                background-color: #707070;
                border-radius: 10px;
            }
            '''
        )
        self.setAttribute(Qt.WA_StyledBackground, True)
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
        self._mod_reg.valueChanged.connect(self._mod_changed)
        row_layout.addWidget(self._mod_reg)

        row_layout.addSpacing(50)

        self._sec_reg = SectorReg(self, 'DS', has_syl=False)
        self._sec_reg.valueChanged.connect(self._sector_changed)
        row_layout.addWidget(self._sec_reg)
        row_layout.addStretch()

        row = QWidget(self)
        layout.addWidget(row)
        row_layout = QHBoxLayout(row)
        row.setLayout(row_layout)
        self._op_reg = OpReg(self)
        self._op_reg.valueChanged.connect(self._op_changed)
        row_layout.addWidget(self._op_reg)

    def _mod_changed(self, mod, dup):
        self._dm_cmd = mod
        self._dupdn_cmd = dup
        self._send_cmd()

    def _sector_changed(self, sector, syl):
        self._ds_cmd = sector
        self._send_cmd()

    def _op_changed(self, opcode, operand):
        self._op_cmd = opcode
        self._a_cmd = operand
        self._send_cmd()

    def _send_cmd(self):
        self._usbif.send(usb_msg.ControlSetCmdDataAddr(self._dm_cmd, self._dupdn_cmd, self._ds_cmd, self._op_cmd, self._a_cmd))

    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterSSMSR):
            self._mod_reg.setComputerValue(msg.dm)
            self._mod_reg.setComputerDuplex(msg.dupdn)

            self._sec_reg.setComputerValue(msg.ds)
        elif isinstance(msg, usb_msg.RegisterOP_A):
            self._parity.setState(0, msg.inst_bra)
            self._parity.setState(1, msg.inst_brb)
            self._op_reg.setComputerOpcode(msg.op)
            self._op_reg.setComputerOperand(msg.a)
