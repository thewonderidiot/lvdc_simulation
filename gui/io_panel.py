from qtpy.QtWidgets import QFrame, QVBoxLayout, QHBoxLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtCore import Qt
from qtpy.QtGui import QColor

from tape_control import TapeControl
from mode_control import ModeControl

class IOPanel(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        self.setFrameStyle(QFrame.Panel | QFrame.Raised)
        self.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)

        label = QLabel('TAPE READER AND MODE CONTROL')
        font = label.font()
        font.setPointSize(12)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, Qt.AlignCenter)

        tape_mode = QWidget(self)
        layout.addWidget(tape_mode)
        tape_mode_layout = QHBoxLayout(tape_mode)
        tape_control = TapeControl(self, self._usbif)
        tape_mode_layout.addWidget(tape_control, 0, Qt.AlignLeft)
        mode_control = ModeControl(self, self._usbif)
        tape_mode_layout.addWidget(mode_control, 0, Qt.AlignRight)
        mode_control.AutoModeChanged.connect(tape_control.set_auto_mode)
