from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QSpacerItem
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt
from switch_lamp import SwitchLamp2HorizontalToggle, SwitchLamp2Horizontal, SwitchLampMomentary, SwitchLamp
from display_select import DisplaySelect
import usb_msg

class DisplayModule(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            QLabel,QRadioButton {
                color: #ffffff;
            }
            DisplayModule {
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

        label = QLabel('DISPLAY MODULE')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 4)

        label = QLabel('ADDRESS\nCOMPARE')
        font.setPointSize(8)
        label.setFont(font)
        layout.addWidget(label, 1, 1)

        self._repeat = SwitchLamp2Horizontal(self, text=['REPEAT', 'SINGLE'], color=QColor(0,255,0))
        self._repeat.pressed.connect(self._repeat_pressed)
        layout.addWidget(self._repeat, 2, 0, 3, 2)

        self._data_ins = SwitchLamp2HorizontalToggle(self, text=['DATA', 'INS'], color=QColor(0,255,0))
        self._data_ins.pressed.connect(self._data_ins_pressed)
        layout.addWidget(self._data_ins, 2, 1, 3, 2)

        spacer = QSpacerItem(self._data_ins.width(), 20, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 5, 0)

        comp_reset = SwitchLampMomentary(self, text='COMPTR\nDISPLAY\nRESET', color=QColor(255,0,0))
        comp_reset.pressed.connect(self._comp_reset_pressed)
        layout.addWidget(comp_reset, 6, 0, 3, 2)

        comp_reset = SwitchLampMomentary(self, text='COMMAND\nDISPLAY\nRESET', color=QColor(255,0,0))
        layout.addWidget(comp_reset, 6, 1, 3, 2)

        spacer = QSpacerItem(50, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 2, 2)

        display_select = DisplaySelect(self)
        layout.addWidget(display_select, 1, 3, 7, 1, Qt.AlignBottom)

    def _repeat_pressed(self):
        if self._repeat.getState(0):
            self._repeat.setState(0, False)
            self._repeat.setState(1, True)
            new_mode = usb_msg.DisplayMode.SINGLE
        elif self._repeat.getState(1):
            self._repeat.setState(1, False)
            new_mode = usb_msg.DisplayMode.CONTINUOUS
        else:
            self._repeat.setState(0, True)
            new_mode = usb_msg.DisplayMode.REPEAT
        self._usbif.send(usb_msg.ControlSetDisplayMode(new_mode))

    def _data_ins_pressed(self):
        new_mode = usb_msg.CompareMode.DATA if self._data_ins.getState(0) else usb_msg.CompareMode.INS
        self._usbif.send(usb_msg.ControlSetCompareMode(new_mode))

    def _comp_reset_pressed(self):
        self._usbif.send(usb_msg.ControlDisplayReset())
