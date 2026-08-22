from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2Horizontal, SwitchLamp2HorizontalToggle, SwitchLamp
import usb_msg

class AutoMode:
    MANUAL = 0
    AUTO = 1

class ModeControl(QWidget):
    AutoModeChanged = Signal(int)

    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            QLabel {
                color: #ffffff;
            }
            ModeControl {
                background-color: #707070;
                border-radius: 10px;
            }
            '''
        )
        self.setAttribute(Qt.WA_StyledBackground, True)
        self.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)
        layout.setContentsMargins(20,5,20,5)
        layout.setAlignment(Qt.AlignCenter)

        label = QLabel('MODE')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 2)

        self._auto_man = SwitchLamp2HorizontalToggle(self, text=['AUTO', 'MANUAL'], color=[QColor(0,255,0), QColor(255,0,0)])
        self._auto_man.pressed.connect(self._auto_man_pressed)
        layout.addWidget(self._auto_man, 1, 0)

        self._mldd = SwitchLamp2Horizontal(self, text=['ML', 'DD'], color=QColor(0,255,0))
        self._mldd.pressed.connect(self._mldd_pressed)
        layout.addWidget(self._mldd, 1, 1)

    def _auto_man_pressed(self):
        new_mode = AutoMode.AUTO if self._auto_man.getState(0) else AutoMode.MANUAL
        self.AutoModeChanged.emit(new_mode)

    def _mldd_pressed(self):
        new_mode = usb_msg.Mode.DATA_DISPLAY if self._mldd.getState(0) else usb_msg.Mode.MEMORY_LOAD
        self._usbif.send(usb_msg.LoaderSetMode(mode=new_mode))

    def _update(self, msg):
        if isinstance(msg, usb_msg.LoaderStatus):
            self._mldd.setState(0, msg.mode == usb_msg.Mode.MEMORY_LOAD)
            self._mldd.setState(1, msg.mode == usb_msg.Mode.DATA_DISPLAY)
