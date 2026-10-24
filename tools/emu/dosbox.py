"""Drive DOSBox-X from outside (Windows): post keys to its window, capture the window, read and write guest memory
through the process. Set DOSBOX to dosbox-x.exe. Box(conf) starts it; Front(box, sig) finds a program's memory by a
byte signature."""
import ctypes as C, ctypes.wintypes as W, subprocess, time, os
from PIL import Image
u32, g32, k32 = C.windll.user32, C.windll.gdi32, C.windll.kernel32
u32.SetProcessDPIAware()
HERE = os.path.dirname(os.path.abspath(__file__))
EXE = os.environ.get('DOSBOX', 'dosbox-x.exe')  # DOSBox-X
VK = {'Enter': 0x0D, 'Esc': 0x1B, 'Space': 0x20, 'Left': 0x25, 'Up': 0x26, 'Right': 0x27, 'Down': 0x28,
      'Ctrl': 0x11, 'Alt': 0x12, 'Shift': 0x10, 'Back': 0x08, 'Tab': 0x09}
EXT = {0x25, 0x26, 0x27, 0x28}

def vk(k): return VK.get(k) or ord(k.upper())

class Box:
    def __init__(s, conf=os.path.join(HERE, 'jam.conf')):
        conf = os.path.join(HERE, conf)
        s.p = subprocess.Popen([EXE, '-conf', conf, '-nopromptfolder', '-nomenu'], cwd=os.path.dirname(EXE), env=dict(os.environ, SDL_VIDEODRIVER='windib'))
        s.hwnd = None
        for _ in range(100):
            time.sleep(0.2); s.hwnd = s._find()
            if s.hwnd: break
        assert s.hwnd, 'no window'
        s.h = k32.OpenProcess(0x0438, False, s.p.pid)  # QUERY_INFORMATION | VM_READ | VM_WRITE | VM_OPERATION
    def _find(s):
        found = []
        @C.WINFUNCTYPE(W.BOOL, W.HWND, W.LPARAM)
        def cb(h, _):
            pid = W.DWORD(); u32.GetWindowThreadProcessId(h, C.byref(pid))
            if pid.value == s.p.pid and u32.IsWindowVisible(h): found.append(h)
            return True
        u32.EnumWindows(cb, 0)
        return found[0] if found else None
    def key(s, k, down):
        v = vk(k); sc = u32.MapVirtualKeyW(v, 0)
        lp = 1 | (sc << 16) | ((1 << 24) if v in EXT else 0) | (0 if down else (3 << 30))
        u32.PostMessageW(s.hwnd, 0x100 if down else 0x101, v, lp)
    def press(s, *keys, hold=0.12, after=0.25):
        for k in keys: s.key(k, True); time.sleep(0.02)
        time.sleep(hold)
        for k in reversed(keys): s.key(k, False); time.sleep(0.02)
        time.sleep(after)
    def shot(s, path=None):
        r = W.RECT(); u32.GetClientRect(s.hwnd, C.byref(r)); w, h = r.right, r.bottom
        hdc = u32.GetDC(s.hwnd); mdc = g32.CreateCompatibleDC(hdc); bmp = g32.CreateCompatibleBitmap(hdc, w, h)
        g32.SelectObject(mdc, bmp); u32.PrintWindow(s.hwnd, mdc, 3)  # client area, full content
        class BIH(C.Structure):
            _fields_ = [('a', W.DWORD), ('w', W.LONG), ('h', W.LONG), ('p', W.WORD), ('b', W.WORD), ('c', W.DWORD),
                        ('s', W.DWORD), ('x', W.LONG), ('y', W.LONG), ('u', W.DWORD), ('i', W.DWORD)]
        bi = BIH(40, w, -h, 1, 32, 0, 0, 0, 0, 0, 0); buf = C.create_string_buffer(w * h * 4)
        g32.GetDIBits(mdc, bmp, 0, h, buf, C.byref(bi), 0)
        g32.DeleteObject(bmp); g32.DeleteDC(mdc); u32.ReleaseDC(s.hwnd, hdc)
        im = Image.frombuffer('RGBA', (w, h), buf, 'raw', 'BGRA').convert('RGB')
        if path: im.save(path)
        return im
    def regions(s):
        class MBI(C.Structure):
            _fields_ = [('base', C.c_uint64), ('abase', C.c_uint64), ('aprot', W.DWORD), ('_a', W.DWORD), ('size', C.c_uint64),
                        ('state', W.DWORD), ('prot', W.DWORD), ('type', W.DWORD), ('_b', W.DWORD)]
        a = 0; m = MBI()
        while k32.VirtualQueryEx(s.h, C.c_void_p(a), C.byref(m), C.sizeof(m)):
            if m.state == 0x1000 and m.prot in (0x04, 0x40) : yield m.base, m.size
            a = m.base + m.size
    def read(s, addr, n):
        buf = C.create_string_buffer(n); got = C.c_size_t()
        k32.ReadProcessMemory(s.h, C.c_void_p(addr), buf, n, C.byref(got))
        return buf.raw[:got.value]
    def find(s, pat, minsize=0):
        for base, size in s.regions():
            if size < minsize: continue
            d = s.read(base, size); i = d.find(pat)
            while i >= 0:
                yield base + i, base, size
                i = d.find(pat, i + 1)
    def close(s): s.p.kill()
    def write(s, addr, data):
        got = C.c_size_t()
        return k32.WriteProcessMemory(s.h, C.c_void_p(addr), data, len(data), C.byref(got))

class Front:
    """Guest variables of the front end, located by its secret-character table (all in LE object 2)."""
    TABLE = 0x8e8d6
    def __init__(s, box, sig):
        s.b = box
        hits = list(box.find(sig, 1 << 20))
        assert len(hits) >= 1, 'table not found'
        s.base = hits[0][0] - s.TABLE  # host address of guest linear 0 (relative to the object)
        s.nhits = len(hits)
    def rd(s, a, n=1): return s.b.read(s.base + a, n)
    def wr(s, a, data): return s.b.write(s.base + a, bytes(data))
    def key(s, sc, down): s.wr(0x5531d + sc, [0x80 if down else 0])
    def tap(s, sc, hold=0.15, after=0.35):
        s.key(sc, True); time.sleep(hold); s.key(sc, False); time.sleep(after)
