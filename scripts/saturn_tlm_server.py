#!/usr/bin/env python3

from serial.tools import list_ports
from slip import *
import serial
import time
import struct
import socket
import sys

SYNC = b'\xA5\x5A'

def check_parity(tag, word, parity):
    word = (tag << 26) | word
    p = 0
    for i in range(38):
        if word & (1 << i):
            p ^= 1

    return parity != p

# Locate and connect to the Cmod
port = None
devices = list_ports.comports()
for dev in devices:
    if dev.vid == 0x0403 and dev.pid == 0x6010 and ':1.1' in dev.hwid:
        port = dev.device
        break

s = serial.Serial(port, 1000000, timeout=0.005)

# Open up a socket for OpenC3
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
sock.bind(('172.17.0.1', 8081))
sock.settimeout(0.01)
sock.listen(1)
conn = None

start = time.time()
data = b''
while True:
    # Check for OpenC3 connections
    if conn is None:
        try:
            conn,addr = sock.accept()
            print('Connected!')
        except:
            pass

    # Read in LVDC telemetry
    data += s.read(100)
    if not data:
        continue


    while data != b'':
        bs, data = unslip_from(data)
        if bs == b'':
            break

        msgid = bs[0]
        bs = bs[1:]

        if msgid != 0x01:
            continue

        if bs == b'\x10\x00\x00\x00\x00':
            continue

        # Reconstitute the tag and word from the transmission format
        tag = ((bs[0] & 0xE0) << 4) | ((bs[1] & 0x3F) << 3) | ((bs[2] & 0xC0) >> 5) | ((bs[2] & 0x10) >> 4)
        word = (((bs[0] & 0x0F) << 2) | ((bs[1] & 0xC0) >> 6) | ((bs[2] & 0x0F) << 12) |
                ((bs[3] & 0xFC) << 4) | ((bs[3] & 0x3) << 24) | (bs[4] << 16))
        parity = (bs[0] & 0x10) >> 4

        # Check the validity bit. If set, data is possibly corrupt.
        if bs[2] & 0x20:
            continue

        # Check the parity of the frame.
        if not check_parity(tag, word, parity):
            continue

        if tag & 0x100:
            # LVDC telemetry: transmit the entire tag and word
            packet = SYNC + struct.pack('>HI', tag, word)
            print(f'{tag:04o}    {word:09o}')
        else:
            # LVDA telemetry: extract the RTC timestamp bits from the tag
            # and send the two separately.
            rtc = ((tag >> 9) & 0o7) | ((tag << 3) & 0o10)
            tag = (tag & 0o776) >> 1
            packet = SYNC + struct.pack('>HBI', tag, rtc, word)
            print(f'{tag:04o} {rtc:02o} {word:09o}')

        sys.stdout.flush()

        # Transmit packetized data to OpenC3
        if conn is not None:
            try:
                conn.sendall(packet)
            except:
                conn = None
