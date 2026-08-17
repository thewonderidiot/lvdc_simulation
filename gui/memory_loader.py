from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QSpacerItem
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2HorizontalToggle, SwitchLamp2Horizontal, SwitchLampMomentary, SwitchLamp
import usb_msg

class MemoryLoader(QWidget):
    resetCommandPressed = Signal()

    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            QLabel {
                color: #ffffff;
            }
            MemoryLoader {
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

        label = QLabel('MEMORY LOADER')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 4)

        spacer = QSpacerItem(15, 15, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 1, 0)

        repeat = SwitchLamp2HorizontalToggle(self, text=['REPEAT', '~REPEAT'], color=[QColor(0,255,0), QColor(255,0,0)])
        layout.addWidget(repeat, 2, 0)

        repeat = SwitchLampMomentary(self, text='ADDRESS\nCOMPTR', color=QColor(0,255,0))
        layout.addWidget(repeat, 2, 1)

        comp_reset = SwitchLampMomentary(self, text='COMPTR\nDISPLAY\nRESET', color=QColor(0,255,0))
        comp_reset.pressed.connect(self._comp_reset_pressed)
        layout.addWidget(comp_reset, 2, 2)

        cmd_reset = SwitchLampMomentary(self, text='COMMAND\nDISPLAY\nRESET', color=QColor(255,0,0))
        cmd_reset.pressed.connect(lambda: self.resetCommandPressed.emit())
        layout.addWidget(cmd_reset, 2, 3)

    def _comp_reset_pressed(self):
        self._usbif.send(usb_msg.ControlDisplayReset())
