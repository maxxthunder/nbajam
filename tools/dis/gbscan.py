"""gbscan.py ROM HRAM...: loads of the HRAM pad bytes followed by cp/and immediates, and 'cp (hl)' table compares nearby."""
import sys, re
d = open(sys.argv[1], 'rb').read(); vars_ = [int(x, 16) for x in sys.argv[2:]]
N = ['A', 'B', 'Sel', 'St', 'R', 'L', 'U', 'D']
def b(v): return '+'.join(N[i] for i in range(8) if v >> i & 1) or '0'
seen = {}
for v in vars_:
    for m in re.finditer(bytes([0xF0, v]), d):
        o = m.end(); ops = []
        for _ in range(3):
            if d[o] in (0xFE, 0xE6, 0xEE): ops.append(f"{ {0xFE:'cp',0xE6:'and',0xEE:'xor'}[d[o]]} {d[o+1]:02x}({b(d[o+1])})"); o += 2
            elif d[o] == 0xBE: ops.append('cp (hl)'); o += 1
            elif d[o] in (0x47, 0x4F, 0x57, 0x5F): o += 1
            else: break
        if ops:
            k = ' '.join(ops); seen.setdefault(k, []).append(f'{m.start():05x}:{v:02x}')
for k, a in sorted(seen.items()): print(f'{len(a):3}x {k:40} {" ".join(a[:6])}')
