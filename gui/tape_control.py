from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QFileDialog
from qtpy.QtGui import QColor
from qtpy.QtCore import Qt, QTimer
from switch_lamp import SwitchLamp2Horizontal, SwitchLamp2HorizontalToggle, SwitchLamp, SwitchLampToggle, SwitchLampMomentary
from mode_control import AutoMode
from tape import Tape
import usb_msg

class TapeControl(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)
        self._auto_mode = AutoMode.MANUAL
        self._tape = None
        self._timer = QTimer()
        self._verify_idx = None
        self._timer.timeout.connect(self._load_next_chunk)

    def set_auto_mode(self, mode):
        self._auto_mode = mode

        if not self._pwr.getState(0):
            return

        if mode == AutoMode.AUTO:
            self._start.setState(0, True)
            self._stop.setState(0, False)
            self._advance.setState(0, False)
        else:
            self._start.setState(0, False)
            self._stop.setState(0, False)
            self._advance.setState(0, True)

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            QLabel {
                color: #ffffff;
            }
            TapeControl {
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

        label = QLabel('TAPE READER CONTROL')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 6)

        self._pwr = SwitchLamp2HorizontalToggle(self, text=['PWR ON', 'PWR OFF'], color=[QColor(0,255,0), QColor(255,0,0)])
        self._pwr.pressed.connect(self._pwr_pressed)
        layout.addWidget(self._pwr, 1, 0)

        self._fwd_rev = SwitchLamp2Horizontal(self, text=['FORWARD', 'REVERSE'], color=[QColor(0,255,0), QColor(255,0,0)])
        self._fwd_rev.pressed.connect(self._fwd_rev_pressed)
        layout.addWidget(self._fwd_rev, 1, 1)

        self._advance = SwitchLamp(self, text='MANUAL\nADVANCE\nTAPE', color=QColor(0,255,0))
        self._advance.pressed.connect(self._advance_pressed)
        layout.addWidget(self._advance, 1, 2)

        self._verify = SwitchLamp(self, text='VERIFY\nONLY', color=QColor(0,255,0))
        self._verify.pressed.connect(self._verify_pressed)
        layout.addWidget(self._verify, 1, 3)

        self._start = SwitchLamp(self, text='START', color=QColor(0,255,0))
        self._start.pressed.connect(self._start_pressed)
        layout.addWidget(self._start, 1, 4)

        self._stop = SwitchLamp(self, text='STOP', color=QColor(255,0,0))
        self._stop.pressed.connect(self._stop_pressed)
        layout.addWidget(self._stop, 1, 5)

    def _pwr_pressed(self):
        powered = self._pwr.getState(0)
        if powered:
            filename,_ = QFileDialog.getOpenFileName(self, 'Open Tape', '', 'Tape Files (*.tsv)')
            if not filename:
                self._pwr.setState(0, False)
                self._pwr.setState(1, True)
                return
            self._tape = Tape(filename)
            self._fwd_rev.setState(0, True)
            if self._auto_mode == AutoMode.AUTO:
                self._start.setState(0, True)
            else:
                self._advance.setState(0, True)
                self._advance_pressed()
        else:
            self._fwd_rev.setState(0, False)
            self._fwd_rev.setState(1, False)
            self._start.setState(0, False)
            self._stop.setState(0, False)
            self._advance.setState(0, False)

    def _fwd_rev_pressed(self):
        powered = self._pwr.getState(0)
        if not powered:
            return

        reverse = self._fwd_rev.getState(0)
        self._fwd_rev.setState(0, not reverse)
        self._fwd_rev.setState(1, reverse)
        self._tape.set_reverse(reverse)

    def _advance_pressed(self):
        if not self._advance.getState(0):
            return
        word = self._tape.read()
        if word is None:
            return
        op = 0b1111 if self._verify.getState(0) else 0b1011
        self._usbif.send(usb_msg.ControlSetCmdDataAddr(word.dm, word.dupdn, word.ds, op, word.a))
        self._usbif.send(usb_msg.LoaderSetCmdData(word.word))

    def _verify_pressed(self):
        verify_only = not self._verify.getState(0)
        self._usbif.send(usb_msg.LoaderSetVerifyOnly(verify_only))

    def _start_pressed(self):
        if not self._start.getState(0):
            return
        self._start.setState(0, False)
        self._stop.setState(0, True)
        self._verify_idx = self._tape.get_index()
        self._timer.start(25)

    def _stop_pressed(self):
        if not self._stop.getState(0):
            return
        self._verify_idx = None
        self._timer.stop()
        self._stop.setState(0, False)
        self._start.setState(0, True)

    def _load_next_chunk(self):
        verify_only = self._verify.getState(0)
        for i in range(64):
            word = self._tape.read()
            if word is None:
                self._tape.rewind()
                self._stop_pressed()
                return

            if verify_only:
                self._usbif.send(usb_msg.VerifyWord(word.dm, word.dupdn, word.ds, word.a, word.word))
            else:
                self._usbif.send(usb_msg.LoadWord(word.dm, word.dupdn, word.ds, word.a, word.word))

    def _update(self, msg):
        if isinstance(msg, usb_msg.LoaderStatus):
            self._verify.setState(0, msg.verify_only)

        if isinstance(msg, usb_msg.VerifyWord):
            if self._verify_idx is not None:
                good = self._tape.verify(self._verify_idx, msg)
                if not good:
                    self._tape.seek(self._verify_idx)
                    self._stop_pressed()
                else:
                    self._verify_idx += 1
