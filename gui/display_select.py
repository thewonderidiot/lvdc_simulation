from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QRadioButton
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
import usb_msg

DISPLAY_OPTIONS = {
    'NONE': usb_msg.DisplaySelect.NONE,
    'AI3-IA': usb_msg.DisplaySelect.AI3_IA,
    'AI3-DATA': usb_msg.DisplaySelect.AI3_DATA,
    'MD7': usb_msg.DisplaySelect.MD7,
    'MR1': usb_msg.DisplaySelect.MR1,
    'PR0': usb_msg.DisplaySelect.PR0,
    'HOPC1': usb_msg.DisplaySelect.HOPC1,
    'RTC': usb_msg.DisplaySelect.RTC,
    'MLC': usb_msg.DisplaySelect.MLC,
    'SSC': usb_msg.DisplaySelect.SSC,
}


class DisplaySelect(QWidget):
    def __init__(self, parent):
        super().__init__(parent)

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        self.setStyleSheet(
        '''
        QRadioButton::indicator {
            width: 16px;
            height: 16px;
            border-radius: 2px;
            border: 2px solid black;
            background-color: #006400;
        }
        QRadioButton::indicator:checked {
            background-color: #00ff00;
            border: 2px solid black;
        }
        ''')
        self.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setVerticalSpacing(0)
        layout.setHorizontalSpacing(5)
        layout.setContentsMargins(0,0,0,0)
        layout.setAlignment(Qt.AlignLeft)

        self._mod_label = QLabel('DISPLAY SELECT', self)
        self._mod_label.setAlignment(Qt.AlignCenter)
        self._mod_label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = self._mod_label.font()
        font.setPointSize(8)
        font.setBold(True)
        self._mod_label.setFont(font)
        layout.addWidget(self._mod_label, 0, 0, 1, 2, Qt.AlignCenter)

        row = 1
        col = 0

        for label,select in DISPLAY_OPTIONS.items():
            sel = QRadioButton(label, self)
            sel.setFont(font)
            if label == 'NONE':
                sel.setChecked(True)
            sel.pressed.connect(lambda s=select: self._update_selection(s))
            layout.addWidget(sel, row, col)
            row += 1
            if row >= 6:
                row = 1
                col += 1
