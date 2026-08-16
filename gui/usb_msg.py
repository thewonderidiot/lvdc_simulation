from collections import namedtuple
import struct

class MsgId:
    Debug = 0
    Telemetry = 1
    Registers = 2
    Control = 3

class Register:
    SSMSR = 0
    OP_A = 1
    TRS = 2
    AI3_DATA = 3
    MD7 = 4
    MR1 = 5
    PR0 = 6
    HOPC1 = 7
    RTC = 8
    SSC_MLC = 9

class RegistersCmd:
    SET_HIST_IDX = 0

class ControlCmd:
    SET_CST_MODE = 0
    ADVANCE = 1
    STOP = 2
    SET_CMD_INS_ADDR = 3
    SET_CMD_DATA_ADDR = 4
    SET_RESTART_MODE = 5
    RESTART = 6
    SET_COMPARE_MODE = 7
    SET_DISPLAY_MODE = 8
    DISPLAY_RESET = 9

class RestartMode:
    MAN_PTC = 0
    AUTO = 1

class CompareMode:
    INS = 0
    DATA = 1

class DisplayMode:
    CONTINUOUS = 0
    SINGLE = 1
    REPEAT = 2

class DisplaySelect:
    NONE = 0
    AI3_IA = 1
    AI3_DATA = 2
    MD7 = 3
    MR1 = 4
    PR0 = 5
    HOPC1 = 6
    RTC = 7
    MLC = 8
    SSC = 9

Telemetry = namedtuple('Telemetry', ['tag', 'rtc', 'word'])
RegisterSSMSR = namedtuple('RegisterSSMSR', ['hist_idx', 'im', 'dupin', 'is_', 'syl', 'dm', 'dupdn', 'ds'])
RegisterOP_A = namedtuple('RegisterOP_A', ['hist_idx', 'inst_bra', 'inst_brb', 'syl0_bra', 'syl0_brb', 'syl1_bra', 'syl1_brb', 'op', 'a', 'ia'])
RegisterTRS = namedtuple('RegisterTRS', ['hist_idx', 'trs'])
RegisterAI3_DATA = namedtuple('RegisterAI3A_DATA', ['hist_idx', 'data'])
RegisterMD7 = namedtuple('RegisterMD7', ['hist_idx', 'md7'])
RegisterMR1 = namedtuple('RegisterMR1', ['hist_idx', 'mr1'])
RegisterPR0 = namedtuple('RegisterPR0', ['hist_idx', 'pr0'])
RegisterHOPC1 = namedtuple('RegisterHOPC1', ['hist_idx', 'hopc1'])
RegisterRTC = namedtuple('RegisterRTC', ['hist_idx', 'rtc'])
RegisterSSC_MLC = namedtuple('RegisterSSC_MLC', ['hist_idx', 'ssc', 'mlc'])
ControlStatus = namedtuple('ControlStatus', ['cst'])

RegistersSetHistIndex = namedtuple('RegistersSetHistIndex', ['hist_idx'])
ControlSetCSTMode = namedtuple('ControlSetCSTMode', ['mode'])
ControlAdvance = namedtuple('ControlAdvance', [])
ControlStop = namedtuple('ControlStop', [])
ControlSetCmdInsAddr = namedtuple('ControlSetCmdInsAddr', ['im', 'dupin', 'is_', 'syl', 'ia'])
ControlSetCmdDataAddr = namedtuple('ControlSetCmdDataAddr', ['dm', 'dupdn', 'ds', 'op', 'a'])
ControlSetRestartMode = namedtuple('ControlSetRestartMode', ['mode'])
ControlRestart = namedtuple('ControlRestart', [])
ControlSetCompareMode = namedtuple('ControlSetCompareMode', ['mode'])
ControlSetDisplayMode = namedtuple('ControlSetDisplayMode', ['mode'])
ControlDisplayReset = namedtuple('ControlDisplayReset', [])

def check_parity(tag, word, parity):
    word = (tag << 26) | word
    p = 0
    for i in range(38):
        if word & (1 << i):
            p ^= 1

    return parity != p

def unpack(msg_bytes):
    msg = None
    msg_id, = struct.unpack_from('>B', msg_bytes)

    if msg_id == MsgId.Telemetry:
        bs = msg_bytes[1:]
        if bs == b'\x10\x00\x00\x00\x00':
            return None

        tag = ((bs[0] & 0xE0) << 4) | ((bs[1] & 0x3F) << 3) | ((bs[2] & 0xC0) >> 5) | ((bs[2] & 0x10) >> 4)
        word = (((bs[0] & 0x0F) << 2) | ((bs[1] & 0xC0) >> 6) | ((bs[2] & 0x0F) << 12) |
                ((bs[3] & 0xFC) << 4) | ((bs[3] & 0x3) << 24) | (bs[4] << 16))
        parity = (bs[0] & 0x10) >> 4

        # Check the validity bit. If set, data is possibly corrupt.
        if bs[2] & 0x20:
            return None

        if not check_parity(tag, word, parity):
            return None

        # Check the parity of the frame.
        if not check_parity(tag, word, parity):
            return None

        if tag & 0x100:
            # LVDC telemetry: transmit the entire tag and word
            rtc = 0
        else:
            # LVDA telemetry: extract the RTC timestamp bits from the tag
            # and send the two separately.
            rtc = ((tag >> 9) & 0o7) | ((tag << 3) & 0o10)
            tag = (tag & 0o776) >> 1

        msg = Telemetry(tag, rtc, word)

    elif msg_id == MsgId.Registers:
        reg_id = msg_bytes[1] >> 4
        hist_idx = msg_bytes[1] & 0xF

        if reg_id == Register.SSMSR:
            im = ((msg_bytes[5] << 1) & 0x06) | ((msg_bytes[2] >> 1) & 0x01)
            is_ = (msg_bytes[5] >> 2) & 0x0F
            syl = (msg_bytes[5] >> 6) & 0x01
            dupdn = msg_bytes[3] & 0x01
            dm = (msg_bytes[3] >> 1) & 0x07
            ds = (msg_bytes[3] >> 4) & 0x0F
            dupin = msg_bytes[2] & 0x01
            msg = RegisterSSMSR(hist_idx, im, dupin, is_, syl, dm, dupdn, ds)
        elif reg_id == Register.OP_A:
            op = msg_bytes[2] & 0x0F
            inst_brb = (msg_bytes[3] >> 2) & 0x01
            inst_bra = (msg_bytes[3] >> 3) & 0x01
            syl0_brb = (msg_bytes[3] >> 4) & 0x01
            syl0_bra = (msg_bytes[3] >> 5) & 0x01
            syl1_brb = (msg_bytes[3] >> 6) & 0x01
            syl1_bra = (msg_bytes[3] >> 7) & 0x01
            a = ((msg_bytes[3] << 8) & 0x100) | msg_bytes[4]
            ia = msg_bytes[5]
            msg = RegisterOP_A(hist_idx, inst_bra, inst_brb, syl0_bra, syl0_brb, syl1_bra, syl1_brb, op, a, ia)
        elif reg_id == Register.TRS:
            trs, = struct.unpack_from('>I', msg_bytes, 2)
            msg = RegisterTRS(hist_idx, trs)
        elif reg_id == Register.AI3_DATA:
            data, = struct.unpack_from('>I', msg_bytes, 2)
            msg = RegisterAI3_DATA(hist_idx, data)
        elif reg_id == Register.MD7:
            md7, = struct.unpack_from('>I', msg_bytes, 2)
            msg = RegisterMD7(hist_idx, md7)
        elif reg_id == Register.MR1:
            mr1, = struct.unpack_from('>I', msg_bytes, 2)
            msg = RegisterMR1(hist_idx, mr1)
        elif reg_id == Register.PR0:
            pr0, = struct.unpack_from('>I', msg_bytes, 2)
            msg = RegisterPR0(hist_idx, pr0)
        elif reg_id == Register.HOPC1:
            hopc1, = struct.unpack_from('>I', msg_bytes, 2)
            msg = RegisterHOPC1(hist_idx, hopc1)
        elif reg_id == Register.RTC:
            rtc, = struct.unpack_from('>H', msg_bytes, 4)
            msg = RegisterRTC(hist_idx, rtc)
        elif reg_id == Register.SSC_MLC:
            ssc, = struct.unpack_from('>H', msg_bytes, 2)
            mlc, = struct.unpack_from('>H', msg_bytes, 4)
            msg = RegisterSSC_MLC(hist_idx, ssc, mlc)

    elif msg_id == MsgId.Control:
        cst = (msg_bytes[5] & 0x01) != 0
        msg = ControlStatus(cst)
        
    return msg

def pack(msg):
    if isinstance(msg, RegistersSetHistIndex):
        msgid = MsgId.Registers
        cmdid = RegistersCmd.SET_HIST_IDX
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, msg.hist_idx)
    elif isinstance(msg, ControlSetCSTMode):
        msgid = MsgId.Control
        cmdid = ControlCmd.SET_CST_MODE
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, 1 if msg.mode else 0)
    elif isinstance(msg, ControlAdvance):
        msgid = MsgId.Control
        cmdid = ControlCmd.ADVANCE
        msg_bytes = struct.pack('>BBxxxx', msgid, cmdid)
    elif isinstance(msg, ControlStop):
        msgid = MsgId.Control
        cmdid = ControlCmd.STOP
        msg_bytes = struct.pack('>BBxxxx', msgid, cmdid)
    elif isinstance(msg, ControlSetCmdInsAddr):
        msgid = MsgId.Control
        cmdid = ControlCmd.SET_CMD_INS_ADDR
        dup = 1 if msg.dupin else 0
        msg_bytes = struct.pack('>BBxBBB', msgid, cmdid, (dup << 4) | msg.im, (msg.syl << 4) | msg.is_, msg.ia)
    elif isinstance(msg, ControlSetCmdDataAddr):
        msgid = MsgId.Control
        cmdid = ControlCmd.SET_CMD_DATA_ADDR
        dup = 1 if msg.dupdn else 0
        msg_bytes = struct.pack('>BBBBH', msgid, cmdid, msg.op, (dup << 7) | (msg.dm << 4) | msg.ds, msg.a)
    elif isinstance(msg, ControlSetRestartMode):
        msgid = MsgId.Control
        cmdid = ControlCmd.SET_RESTART_MODE
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, 1 if msg.mode else 0)
    elif isinstance(msg, ControlRestart):
        msgid = MsgId.Control
        cmdid = ControlCmd.RESTART
        msg_bytes = struct.pack('>BBxxxx', msgid, cmdid)
    elif isinstance(msg, ControlSetCompareMode):
        msgid = MsgId.Control
        cmdid = ControlCmd.SET_COMPARE_MODE
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, 1 if msg.mode else 0)
    elif isinstance(msg, ControlSetDisplayMode):
        msgid = MsgId.Control
        cmdid = ControlCmd.SET_DISPLAY_MODE
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, msg.mode)
    elif isinstance(msg, ControlDisplayReset):
        msgid = MsgId.Control
        cmdid = ControlCmd.DISPLAY_RESET
        msg_bytes = struct.pack('>BBxxxx', msgid, cmdid)

    return msg_bytes
