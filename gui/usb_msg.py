from collections import namedtuple
import struct

class MsgId:
    Debug = 0
    Telemetry = 1
    Registers = 2
    Control = 3
    Loader = 4
    LoadWord = 0x10
    VerifyWord = 0x20

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

class ControlTlm:
    CONTROL_STATUS = 0
    CMD_INS_ADDR = 1
    CMD_DATA_ADDR = 2

class LoaderCmd:
    SET_MODE = 0
    SET_CMD_DATA = 1
    ADDRESS_COMPUTER = 2
    SET_VERIFY_ONLY = 3

class LoaderTlm:
    LOADER_STATUS = 0
    CMD_DATA = 1

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

class Mode:
    DATA_DISPLAY = 0
    MEMORY_LOAD = 1

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
ControlStatus = namedtuple('ControlStatus', ['cst_mode', 'cst', 'restart_mode', 'compare_mode', 'display_mode'])
ControlCmdInsAddr = namedtuple('ControlCmdInsAddr', ['im', 'dupin', 'is_', 'syl', 'ia'])
ControlCmdDataAddr = namedtuple('ControlCmdDataAddr', ['dm', 'dupdn', 'ds', 'op', 'a'])
LoaderStatus = namedtuple('LoaderStatus', ['mode', 'verify_only'])
LoaderCmdData = namedtuple('LoaderCmdData', ['word', 'syl0_parity', 'syl1_parity'])

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
LoaderSetMode = namedtuple('LoaderSetMode', ['mode'])
LoaderSetCmdData = namedtuple('LoaderSetCmdData', ['word'])
LoaderAddressComputer = namedtuple('LoaderAddressComputer', [])
LoaderSetVerifyOnly = namedtuple('LoaderSetVerifyOnly', ['verify_only'])

LoadWord = namedtuple('LoadWord', ['dm', 'dupdn', 'ds', 'a', 'word'])
VerifyWord = namedtuple('VerifyWord', ['dm', 'dupdn', 'ds', 'a', 'word'])

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
        tlm_id = msg_bytes[1]
        if tlm_id == ControlTlm.CONTROL_STATUS:
            cst_mode = msg_bytes[5] & 0x01
            cst = (msg_bytes[5] & 0x02) != 0
            restart_mode = (msg_bytes[5] >> 2) & 0x01
            compare_mode = (msg_bytes[5] >> 3) & 0x01
            display_mode = (msg_bytes[5] >> 4) & 0x03
            msg = ControlStatus(cst_mode, cst, restart_mode, compare_mode, display_mode)
        elif tlm_id == ControlTlm.CMD_INS_ADDR:
            dupin = (msg_bytes[3] >> 4) & 1
            im = msg_bytes[3] & 0x7
            syl = (msg_bytes[4] >> 4) & 1
            is_ = msg_bytes[4] & 0xf
            ai3_ia = msg_bytes[5]
            msg = ControlCmdInsAddr(im, dupin, is_, syl, ai3_ia)
        elif tlm_id == ControlTlm.CMD_DATA_ADDR:
            op = msg_bytes[2] & 0xf
            dupdn = (msg_bytes[3] >> 7) & 1
            dm = (msg_bytes[3] >> 4) & 0x7
            ds = msg_bytes[3] & 0xf
            a, = struct.unpack_from('>H', msg_bytes, 4)
            msg = ControlCmdDataAddr(dm, dupdn, ds, op, a)

    elif msg_id == MsgId.Loader:
        tlm_id = msg_bytes[1]
        if tlm_id == LoaderTlm.LOADER_STATUS:
            mode = msg_bytes[5] & 0x01
            verify_only = (msg_bytes[5] & 0x02) != 0
            msg = LoaderStatus(mode, verify_only)
        elif tlm_id == LoaderTlm.CMD_DATA:
            word, = struct.unpack_from('>I', msg_bytes, 2)
            syl0_parity = (word >> 26) & 0x01
            syl1_parity = (word >> 27) & 0x01
            word &= 0o377777777
            msg = LoaderCmdData(word, syl0_parity, syl1_parity)

    elif msg_id & 0xF0 == MsgId.VerifyWord:
        dm = msg_id & 0x7
        data, = struct.unpack('>Q', b'\x00\x00\x00' + msg_bytes[1:])
        word = data & 0o377777777
        a = (data >> 26) & 0o777
        ds = (data >> 35) & 0o17
        dupdn = (data >> 39) & 0o1
        msg = VerifyWord(dm, dupdn, ds, a, word)
        
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
    elif isinstance(msg, LoaderSetMode):
        msgid = MsgId.Loader
        cmdid = LoaderCmd.SET_MODE
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, msg.mode)
    elif isinstance(msg, LoaderSetCmdData):
        msgid = MsgId.Loader
        cmdid = LoaderCmd.SET_CMD_DATA
        msg_bytes = struct.pack('>BBI', msgid, cmdid, msg.word)
    elif isinstance(msg, LoaderAddressComputer):
        msgid = MsgId.Loader
        cmdid = LoaderCmd.ADDRESS_COMPUTER
        msg_bytes = struct.pack('>BBxxxx', msgid, cmdid)
    elif isinstance(msg, LoaderSetVerifyOnly):
        msgid = MsgId.Loader
        cmdid = LoaderCmd.SET_VERIFY_ONLY
        msg_bytes = struct.pack('>BBxxxB', msgid, cmdid, msg.verify_only)
    elif isinstance(msg, VerifyWord) or isinstance(msg, LoadWord):
        msgid = (MsgId.VerifyWord if isinstance(msg, VerifyWord) else MsgId.LoadWord) | msg.dm
        data = struct.pack('>Q', (msg.dupdn << 39) | (msg.ds << 35)| (msg.a << 26) | msg.word)
        msg_bytes = struct.pack('>B', msgid) + data[3:]

    return msg_bytes
