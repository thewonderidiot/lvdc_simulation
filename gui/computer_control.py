from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt
from switch_lamp import SwitchLamp2HorizontalToggle, SwitchLamp2Horizontal, SwitchLampMomentary, SwitchLamp
import usb_msg

class ComputerControl(QWidget):
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
            ComputerControl {
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

        label = QLabel('COMPUTER CONTROL')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 8)

        self._step_label = QLabel('SINGLE STEP', self)
        self._step_label.setAlignment(Qt.AlignCenter)
        self._step_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font.setPointSize(8)
        self._step_label.setFont(font)
        layout.addWidget(self._step_label, 1, 0, 1, 3, Qt.AlignCenter)

        self._restart_label = QLabel('RESTART', self)
        self._restart_label.setAlignment(Qt.AlignCenter)
        self._restart_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        self._restart_label.setFont(font)
        layout.addWidget(self._restart_label, 1, 3, 1, 2, Qt.AlignCenter)

        self._clock_label = QLabel('MEMORY CLOCK', self)
        self._clock_label.setAlignment(Qt.AlignCenter)
        self._clock_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        self._clock_label.setFont(font)
        layout.addWidget(self._clock_label, 1, 5, 1, 3, Qt.AlignCenter)

        self._cst_onoff = SwitchLamp2HorizontalToggle(self, text=['ON', 'OFF'], color=[QColor(0,255,0), QColor(255,0,0)])
        self._cst_onoff.pressed.connect(self._set_cst_onoff)
        layout.addWidget(self._cst_onoff, 2, 0)

        self._advance = SwitchLamp2Horizontal(self, text=['ADVANCE', 'CST'], color=[QColor(0,255,0), QColor(255,0,0)])
        self._advance.pressed.connect(self._advance_pressed)
        self._advance.released.connect(self._advance_released)
        layout.addWidget(self._advance, 2, 1)

        self._stop = SwitchLamp(self, text='STOP', color=QColor(255,0,0))
        self._stop.pressed.connect(self._stop_pressed)
        self._stop.released.connect(self._stop_released)
        layout.addWidget(self._stop, 2, 2)

        auto_man = SwitchLamp2HorizontalToggle(self, text=['AUTO', 'MAN/PTC'], color=[QColor(0,255,0), QColor(255,0,0)])
        layout.addWidget(auto_man, 2, 3)

        self._man_restart = SwitchLampMomentary(self, text='MANUAL\nRESTART', color=QColor(255,0,0))
        layout.addWidget(self._man_restart, 2, 4)

        early = SwitchLamp(self, text='EARLY', color=QColor(0,255,0))
        layout.addWidget(early, 2, 5)

        normal = SwitchLamp(self, text='NORMAL', color=QColor(0,255,0))
        layout.addWidget(normal, 2, 6)
        normal.setState(0, True)

        self._late = SwitchLamp(self, text='LATE', color=QColor(0,255,0))
        layout.addWidget(self._late, 2, 7)

    def _set_cst_onoff(self):
        state = self._cst_onoff.getState(0)
        self._usbif.send(usb_msg.ControlSetCSTMode(state))

    def _advance_pressed(self):
        cst_mode = self._cst_onoff.getState(0)
        if cst_mode:
            self._advance.setState(0, True)
            self._usbif.send(usb_msg.ControlAdvance())
        
    def _advance_released(self):
        self._advance.setState(0, False)

    def _stop_pressed(self):
        cst_mode = self._cst_onoff.getState(0)
        if cst_mode:
            self._stop.setState(0, True)
            self._usbif.send(usb_msg.ControlStop())
        
    def _stop_released(self):
        self._stop.setState(0, False)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QColor(255,255,255))
        step_geom = self._step_label.geometry()
        line_h = step_geom.center().y()
        step_l = self._cst_onoff.geometry().left()
        line_r = step_geom.left() - 2
        painter.drawLine(step_l, line_h, line_r, line_h)

        restart_geom = self._restart_label.geometry()
        line_l = step_geom.right() + 2
        line_r = restart_geom.left() - 2
        painter.drawLine(line_l, line_h, line_r, line_h)

        clock_geom = self._clock_label.geometry()
        line_l = restart_geom.right() + 2
        line_r = clock_geom.left() - 2
        painter.drawLine(line_l, line_h, line_r, line_h)

        late_r = self._late.geometry().right()
        line_l = clock_geom.right() + 2
        painter.drawLine(line_l, line_h, late_r, line_h)

        stop_r = self._stop.geometry().right()
        switch_top = self._cst_onoff.geometry().top()
        line_top = clock_geom.top()
        restart_r = self._man_restart.geometry().right()

        painter.drawLine(step_l, line_top, step_l, switch_top)
        painter.drawLine(stop_r, line_top, stop_r, switch_top)
        painter.drawLine(restart_r, line_top, restart_r, switch_top)
        painter.drawLine(late_r, line_top, late_r, switch_top)
