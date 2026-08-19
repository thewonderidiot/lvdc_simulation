from qtpy.QtWidgets import QMainWindow, QHBoxLayout, QWidget
from qtpy.QtCore import Qt

from mldd_panel import MLDDPanel
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

    def _setup_ui(self):
        self.setWindowTitle('LVDCME')

        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QHBoxLayout(central)
        central.setLayout(layout)

        mldd_panel = MLDDPanel(self, self._usbif)
        layout.addWidget(mldd_panel)
