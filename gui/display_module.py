from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QSpacerItem
from qtpy.QtGui import QColor
from qtpy.QtCore import Qt, Signal
from switch_lamp import SwitchLamp2Horizontal, SwitchLampMomentary
from display_select import DisplaySelect
from word_select import WordSelect
import usb_msg

class DisplayModule(QWidget):
    resetCommandPressed = Signal()
    displaySelectChanged = Signal(int)

    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)

        self._current_time = 0
        self._cst = False

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
        layout.addWidget(label, 0, 0, 1, 9)

        label = QLabel('ADDRESS\nCOMPARE')
        font.setPointSize(8)
        label.setFont(font)
        layout.addWidget(label, 1, 1)

        self._repeat = SwitchLamp2Horizontal(self, text=['REPEAT', 'SINGLE'], color=QColor(0,255,0))
        self._repeat.pressed.connect(self._repeat_pressed)
        layout.addWidget(self._repeat, 2, 0, 3, 2)

        self._data_ins = SwitchLamp2Horizontal(self, text=['DATA', 'INS'], color=QColor(0,255,0))
        self._data_ins.pressed.connect(self._data_ins_pressed)
        layout.addWidget(self._data_ins, 2, 1, 3, 2)

        spacer = QSpacerItem(self._data_ins.width(), 20, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 5, 0)

        comp_reset = SwitchLampMomentary(self, text='COMPTR\nDISPLAY\nRESET', color=QColor(0,255,0))
        comp_reset.pressed.connect(self._comp_reset_pressed)
        layout.addWidget(comp_reset, 6, 0, 3, 2)

        cmd_reset = SwitchLampMomentary(self, text='COMMAND\nDISPLAY\nRESET', color=QColor(255,0,0))
        cmd_reset.pressed.connect(lambda: self.resetCommandPressed.emit())
        layout.addWidget(cmd_reset, 6, 1, 3, 2)

        spacer = QSpacerItem(50, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 2, 2)

        display_select = DisplaySelect(self)
        display_select.valueChanged.connect(lambda s: self.displaySelectChanged.emit(s))
        layout.addWidget(display_select, 1, 3, 8, 1, Qt.AlignBottom)

        spacer = QSpacerItem(30, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 2, 4)

        self._past_present = SwitchLamp2Horizontal(self, text=['PAST','PRESENT'], color=QColor(0,255,0))
        self._past_present.setState(1, True)
        self._past_present.pressed.connect(self._past_present_pressed)
        layout.addWidget(self._past_present, 4, 5, 3, 1, Qt.AlignBottom)

        error_override = SwitchLampMomentary(self, text='ERROR\nOVER\nRIDE', color=QColor(255,0,0))
        layout.addWidget(error_override, 4, 6, 3, 1, Qt.AlignBottom)

        spacer = QSpacerItem(40, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 2, 7)

        word_select = WordSelect(self)
        word_select.valueChanged.connect(self._word_select_changed)
        layout.addWidget(word_select, 1, 8, 8, 1, Qt.AlignBottom)

    def _repeat_pressed(self):
        if self._repeat.getState(0):
            new_mode = usb_msg.DisplayMode.SINGLE
        elif self._repeat.getState(1):
            new_mode = usb_msg.DisplayMode.CONTINUOUS
        else:
            new_mode = usb_msg.DisplayMode.REPEAT
        self._usbif.send(usb_msg.ControlSetDisplayMode(new_mode))

    def _data_ins_pressed(self):
        new_mode = usb_msg.CompareMode.INS if self._data_ins.getState(0) else usb_msg.CompareMode.DATA
        self._usbif.send(usb_msg.ControlSetCompareMode(new_mode))

    def _comp_reset_pressed(self):
        self._usbif.send(usb_msg.ControlDisplayReset())

    def _past_present_pressed(self):
        present = self._past_present.getState(1)
        if present and self._cst:
            self._past_present.setState(0, True)
            self._past_present.setState(1, False)
        elif not present:
            self._past_present.setState(0, False)
            self._past_present.setState(1, True)
        self._send_past_index()

    def _send_past_index(self):
        past = self._past_present.getState(0)
        if past:
            self._usbif.send(usb_msg.RegistersSetHistIndex(self._current_time))
        else:
            self._usbif.send(usb_msg.RegistersSetHistIndex(0))

    def _word_select_changed(self, time):
        self._current_time = time
        past = self._past_present.getState(0)
        if past:
            self._usbif.send(usb_msg.RegistersSetHistIndex(time))

    def _update(self, msg):
        if isinstance(msg, usb_msg.ControlStatus):
            self._repeat.setState(0, msg.display_mode == usb_msg.DisplayMode.REPEAT)
            self._repeat.setState(1, msg.display_mode == usb_msg.DisplayMode.SINGLE)
            self._data_ins.setState(0, msg.compare_mode == usb_msg.CompareMode.DATA)
            self._data_ins.setState(1, msg.compare_mode == usb_msg.CompareMode.INS)
            if self._cst and not msg.cst:
                self._past_present.setState(0, False)
                self._past_present.setState(1, True)
                self._send_past_index()
            self._cst = msg.cst
