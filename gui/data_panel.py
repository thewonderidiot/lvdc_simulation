from qtpy.QtWidgets import QHBoxLayout, QVBoxLayout, QWidget, QLabel, QSizePolicy
from qtpy.QtGui import QColor, QPainter
from qtpy.QtCore import Qt
from data_parity import DataParity
from data_reg import DataReg
import usb_msg

class DataPanel(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()
        self._usbif.msg_received.connect(self._update)

    def _setup_ui(self):
        self.setStyleSheet(
            '''
            color: #ffffff;
            '''
        )
        self.setAttribute(Qt.WA_StyledBackground, True)
        self.setSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
        layout = QVBoxLayout(self)
        layout.setSpacing(0)
        layout.setContentsMargins(0,0,0,0)
        self.setLayout(layout)

        label = QLabel('DATA')
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(10)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label)

        self._data_parity = DataParity(self)
        layout.addWidget(self._data_parity, 0, Qt.AlignCenter)

        self._data_reg = DataReg(self)
        layout.addWidget(self._data_reg, 0, Qt.AlignCenter)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        painter.setBrush(QColor('#707070'))
        painter.setPen(Qt.NoPen)
        top_rect = self._data_parity.geometry()
        top_rect.setTop(0)
        top_rect.setLeft(top_rect.left()-10)
        top_rect.setRight(top_rect.right()+10)
        bottom_rect = self._data_reg.geometry()
        bottom_rect.setTop(bottom_rect.top() - 20)
        painter.drawRoundedRect(top_rect, 10, 10)
        painter.drawRoundedRect(bottom_rect, 10, 10)

    def _update(self, msg):
        if isinstance(msg, usb_msg.RegisterAI3_DATA):
            self._data_reg.setValue(msg.data)
        if isinstance(msg, usb_msg.RegisterOP_A):
            self._data_parity.setSyl0Parity(msg.syl0_bra, msg.syl0_brb)
            self._data_parity.setSyl1Parity(msg.syl1_bra, msg.syl1_brb)
