from qtpy.QtWidgets import QMainWindow, QVBoxLayout, QWidget
from qtpy.QtCore import Qt
import os

from inst_addr_panel import InstAddrPanel
from data_addr_panel import DataAddrPanel
from usb_interface import USBInterface
import usb_msg

class MainWindow(QMainWindow):
    def __init__(self, parent, app):
        super().__init__(parent)
        self._app = app

        # Set up the serial port
        self._usbif = USBInterface(self)

        # Set up the UI
        self._setup_ui()

        self._usbif.msg_received.connect(self._update)
        self._usbif.connected.connect(self._connected)

    def _setup_ui(self):
        self.setWindowTitle('LVDCME')

        # Create a central widget, give it a layout, and set it up
        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        central.setLayout(layout)

        inst_addr = InstAddrPanel(self, self._usbif)
        layout.addWidget(inst_addr, 0, Qt.AlignCenter)

        data_addr = DataAddrPanel(self, self._usbif)
        layout.addWidget(data_addr, 0, Qt.AlignCenter)

    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterAI3_DATA):
            pass
                
    def _connected(self, connected):
        pass
