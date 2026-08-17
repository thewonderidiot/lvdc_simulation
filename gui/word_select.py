from qtpy.QtWidgets import QGridLayout, QWidget, QLabel, QSizePolicy, QRadioButton
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt, Signal
import usb_msg

class WordSelect(QWidget):
    valueChanged = Signal(int)

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

        label = QLabel('WORD', self)
        label.setAlignment(Qt.AlignCenter)
        label.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        font = label.font()
        font.setPointSize(8)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, 0, 0, 1, 4, Qt.AlignCenter)

        row = 1
        col = 0

        for t in range(16):
            sel = QRadioButton('T' if t == 0 else 'T-%u' % t, self)
            sel.setFont(font)
            if t == 0:
                sel.setChecked(True)
            sel.pressed.connect(lambda s=t: self.valueChanged.emit(s))
            layout.addWidget(sel, row, col)
            row += 1
            if row >= 7:
                row = 1
                col += 1
