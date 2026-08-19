from qtpy.QtWidgets import QHBoxLayout, QVBoxLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtCore import Qt
from module_reg import ModuleReg
from sector_reg import SectorReg
from addr_reg import AddrReg
import usb_msg

class InstAddrPanel(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)
        self.reset_command()

    def reset_command(self):
        self._im_cmd = 0
        self._dupin_cmd = False
        self._is_cmd = 0
        self._syl_cmd = 0
        self._ia_cmd = 0
        self._send_cmd()

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            QLabel {
                color: #ffffff;
            }
            InstAddrPanel {
                background-color: #707070;
                border-radius: 10px;
            }
            '''
        )
        self.setAttribute(Qt.WA_StyledBackground, True)
        self.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        layout = QVBoxLayout(self)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        self.setLayout(layout)

        label = QLabel('INSTRUCTION ADDRESS')
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

        self._mod_reg = ModuleReg(self, 'IM')
        self._mod_reg.valueChanged.connect(self._mod_changed)
        row_layout.addWidget(self._mod_reg)

        row_layout.addSpacing(50)

        self._sec_reg = SectorReg(self, 'IS', has_syl=True)
        self._sec_reg.valueChanged.connect(self._sector_changed)
        row_layout.addWidget(self._sec_reg)

        row = QWidget(self)
        layout.addWidget(row)
        row_layout = QHBoxLayout(row)
        row.setLayout(row_layout)
        self._addr_reg = AddrReg(self)
        self._addr_reg.valueChanged.connect(self._address_changed)
        row_layout.addSpacing(50)
        row_layout.addWidget(self._addr_reg)

    def _mod_changed(self, mod, dup):
        self._im_cmd = mod
        self._dupin_cmd = dup
        self._send_cmd()

    def _sector_changed(self, sector, syl):
        self._is_cmd = sector
        self._syl_cmd = syl
        self._send_cmd()

    def _address_changed(self, address):
        self._ia_cmd = address
        self._send_cmd()

    def _send_cmd(self):
        self._usbif.send(usb_msg.ControlSetCmdInsAddr(self._im_cmd, self._dupin_cmd, self._is_cmd, self._syl_cmd, self._ia_cmd))

    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterSSMSR):
            self._mod_reg.setComputerValue(msg.im)
            self._mod_reg.setComputerDuplex(msg.dupin)

            self._sec_reg.setComputerSyl(msg.syl)
            self._sec_reg.setComputerValue(msg.is_)

        elif isinstance(msg, usb_msg.RegisterOP_A):
            self._addr_reg.setComputerValue(msg.ia)

        elif isinstance(msg, usb_msg.ControlCmdInsAddr):
            self._mod_reg.setCommandValue(msg.im)
            self._mod_reg.setCommandDuplex(msg.dupin)
            self._sec_reg.setCommandValue(msg.is_)
            self._sec_reg.setCommandSyl(msg.syl)
            self._addr_reg.setCommandValue(msg.ia)
