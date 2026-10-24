"""ggscan.py ROM ADDR...: Z80 'ld a,(nn)' of the pad bytes followed by cpl/cp/and/xor immediates (pad is active-low; bits U D L R 1 2 St)."""
import sys, re
d = open(sys.argv[1], 'rb').read()
N = ['U', 'D', 'L', 'R', '1', '2', 'St', '?']
def b(v): return '+'.join(N[i] for i in range(8) if v >> i & 1) or '0'
seen = {}
for a in sys.argv[2:]:
    v = int(a, 16)
    for m in re.finditer(re.escape(bytes([0x3A, v & 0xFF, v >> 8])), d):
        o = m.end(); ops = []
        for _ in range(4):
            c = d[o]
            if c == 0x2F: ops.append('cpl'); o += 1
            elif c in (0xFE, 0xE6, 0xEE, 0xF6): ops.append(f"{ {0xFE:'cp',0xE6:'and',0xEE:'xor',0xF6:'or'}[c]} {d[o+1]:02x}({b(d[o+1])})"); o += 2
            elif c in (0x47, 0x4F, 0x57, 0x5F): o += 1
            else: break
        if any(not x.startswith('cpl') for x in ops):
            seen.setdefault(' '.join(ops), []).append(f'{m.start():05x}:{a}')
for k, a in sorted(seen.items()): print(f'{len(a):3}x {k:44} {" ".join(a[:5])}')
