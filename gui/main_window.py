from qtpy.QtWidgets import QMainWindow, QVBoxLayout, QHBoxLayout, QWidget, QLabel
from qtpy.QtCore import Qt
from qtpy.QtGui import QColor
import os

from inst_addr_panel import InstAddrPanel
from data_addr_panel import DataAddrPanel
from data_panel import DataPanel
from computer_control import ComputerControl
from memory_loader import MemoryLoader
from display_module import DisplayModule
from usb_interface import USBInterface
from switch_lamp import Lamp, SwitchLampToggle, SwitchLamp4Toggle
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

        label = QLabel('MEMORY LOAD AND DATA DISPLAY')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(12)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label)

        inst_addr = InstAddrPanel(self, self._usbif)
        layout.addWidget(inst_addr, 0, Qt.AlignCenter)

        data_addr = DataAddrPanel(self, self._usbif)
        layout.addWidget(data_addr, 0, Qt.AlignCenter)


        buttons = QWidget(self)
        layout.addWidget(buttons)
        buttons_layout = QHBoxLayout(buttons)
        buttons.setLayout(buttons_layout)

        lamp_test = SwitchLampToggle(self, text='LAMP\nTEST', color=QColor(255,255,0))
        buttons_layout.addWidget(lamp_test, 0, Qt.AlignBottom | Qt.AlignCenter)

        serializer = QWidget(self)
        buttons_layout.addWidget(serializer, 0, Qt.AlignBottom | Qt.AlignCenter)
        serializer_layout = QVBoxLayout(serializer)
        serializer.setLayout(serializer_layout)
        label = QLabel('SERIALIZER')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(8)
        font.setBold(True)
        label.setFont(font)
        serializer_layout.addWidget(label)
        serializer_layout.setSpacing(0)
        serializer_layout.setContentsMargins(0,0,0,0)
        acme_parity = Lamp(self, text='ACME\nPARITY\nBIT', color=QColor(255,0,0))
        serializer_layout.addWidget(acme_parity, 0, Qt.AlignCenter)

        serial_out = SwitchLampToggle(self, text='DISPLAY\nSERIAL\nOUT', color=QColor(255,255,0))
        buttons_layout.addWidget(serial_out, 0, Qt.AlignBottom | Qt.AlignCenter)

        channel = QWidget(self)
        buttons_layout.addWidget(channel, 0, Qt.AlignBottom | Qt.AlignCenter)
        channel_layout = QVBoxLayout(channel)
        channel.setLayout(channel_layout)
        label = QLabel('CHANNEL')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(8)
        font.setBold(True)
        label.setFont(font)
        channel_layout.addWidget(label)
        channel_layout.setSpacing(0)
        channel_layout.setContentsMargins(0,0,0,0)
        chan_sw = SwitchLamp4Toggle(self, text=['ALL','1','2','3'], color=QColor(255,255,0))
        channel_layout.addWidget(chan_sw, 0, Qt.AlignCenter)

        data_panel = DataPanel(self, self._usbif)
        layout.addWidget(data_panel, 0, Qt.AlignCenter)

        control = QWidget(self)
        layout.addWidget(control)
        control_layout = QHBoxLayout(control)
        comp_control = ComputerControl(self, self._usbif)
        control_layout.addWidget(comp_control, 0, Qt.AlignLeft)
        mem_loader = MemoryLoader(self)
        control_layout.addWidget(mem_loader, 0, Qt.AlignRight)

        display_module = DisplayModule(self, self._usbif)
        layout.addWidget(display_module, 0, Qt.AlignCenter)


    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterAI3_DATA):
            pass
                
    def _connected(self, connected):
        pass
