from qtpy.QtCore import QObject, QIODevice, QTimer, Signal
from qtpy.QtSerialPort import QSerialPort, QSerialPortInfo
import crcmod.predefined
import struct

from slip import slip, unslip_from
import usb_msg

POLL_PERIOD_MS = 20

class USBInterface(QObject):
    msg_received = Signal(object)
    connected = Signal(bool)

    def __init__(self, parent):
        super().__init__(parent)

        self._serial = None
        self._rx_bytes = b''

        self._timer = QTimer(None)
        self._timer.timeout.connect(self._connect)
        self._timer.start(POLL_PERIOD_MS)


    def _connect(self):
        dev_info = None

        # The FT2232H can appear as multiple serial ports. We always want
        # the second... which (hopefully) will always appear second in
        # this list.
        for info in QSerialPortInfo.availablePorts():
            if ((info.manufacturer() == 'Digilent') and
                (info.hasVendorIdentifier() and info.vendorIdentifier() == 0x0403) and
                (info.hasProductIdentifier() and info.productIdentifier() == 0x6010)):
                dev_info = info

        if dev_info is None:
            return

        self._serial = QSerialPort(dev_info, self)
        self._serial.setBaudRate(1000000)
        if not self._serial.open(QIODevice.ReadWrite):
            raise RuntimeError('Failed to open %s' % info.name())

        self._serial.readyRead.connect(self._read_data)
        self._serial.errorOccurred.connect(self._error)
        self._timer.stop()
        print('Connected!')
        self.connected.emit(True)

    def _error(self, error):
        print('Disconnected: %s' %error)
        self._disconnect()

    def _disconnect(self):
        self._serial.close()
        self._serial = None
        self._rx_bytes = b''
        self.connected.emit(False)
        self._timer.start(POLL_PERIOD_MS)


    def _read_data(self):
        self._rx_bytes += bytes(self._serial.readAll())
        while self._rx_bytes != b'':
            msg_bytes, self._rx_bytes = unslip_from(self._rx_bytes)
            if msg_bytes == b'':
                break

            msg = usb_msg.unpack(msg_bytes)
            if msg is not None:
                self.msg_received.emit(msg)

    def send(self, msg):
        if not self._serial:
            return
        packed = usb_msg.pack(msg)
        slipped = slip(packed)
        print(slipped.hex())
        self._serial.write(slipped)
