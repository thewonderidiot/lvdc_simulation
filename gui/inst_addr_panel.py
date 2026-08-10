from qtpy.QtWidgets import QFrame, QHBoxLayout, QVBoxLayout, QWidget, QLabel
from qtpy.QtCore import Qt
from module_reg import ModuleReg
from sector_reg import SectorReg
from addr_reg import AddrReg
import usb_msg

class InstAddrPanel(QFrame):
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
        row_layout.addWidget(self._mod_reg)

        row_layout.addSpacing(40)

        self._sec_reg = SectorReg(self, 'IS', has_syl=True)
        row_layout.addWidget(self._sec_reg)

        row = QWidget(self)
        layout.addWidget(row)
        row_layout = QHBoxLayout(row)
        row.setLayout(row_layout)
        self._addr_reg = AddrReg(self)
        row_layout.addSpacing(30)
        row_layout.addWidget(self._addr_reg)

    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterSSMSR):
            self._mod_reg.setValue(msg.im)
            self._mod_reg.setDuplex(msg.dupin)

            self._sec_reg.setSyl(msg.syl)
            self._sec_reg.setValue(msg.is_)

        elif isinstance(msg, usb_msg.RegisterOP_A_IA):
            self._addr_reg.setValue(msg.ia)
