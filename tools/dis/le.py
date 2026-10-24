"""Minimal LE (DOS/4GW) reader: objects mapped at their base, and internal fixups as (site linear addr, target linear addr)."""
import struct, sys

class LE:
    def __init__(s, path):
        d = s.d = open(path, 'rb').read()
        h = s.h = struct.unpack('<I', d[0x3C:0x40])[0]
        assert d[h:h + 2] == b'LE', d[h:h + 2]
        u = lambda o: struct.unpack('<I', d[h + o:h + o + 4])[0]
        s.pagesize, npages = u(0x28), u(0x14)
        objtab, nobj, fpt, frt, s.datapages = u(0x40), u(0x44), u(0x68), u(0x6C), u(0x80)
        s.objs = []
        for i in range(nobj):
            vs, base, fl, pi, pc, _ = struct.unpack('<6I', d[h + objtab + 24 * i:h + objtab + 24 * i + 24])
            s.objs.append((vs, base, fl, pi, pc))
        s.mem = {}
        for vs, base, fl, pi, pc in s.objs:
            b = bytearray(vs)
            for j in range(pc):
                off = s.datapages + (pi - 1 + j) * s.pagesize
                chunk = d[off:off + s.pagesize]
                b[j * s.pagesize:j * s.pagesize + len(chunk)] = chunk[:max(0, min(len(chunk), vs - j * s.pagesize))]
            s.mem[base] = bytes(b)
        s.fix = []
        pages = [struct.unpack('<I', d[h + fpt + 4 * i:h + fpt + 4 * i + 4])[0] for i in range(npages + 1)]
        pg2lin = {}
        for vs, base, fl, pi, pc in s.objs:
            for j in range(pc): pg2lin[pi + j] = base + j * s.pagesize
        for p in range(npages):
            o, end = h + frt + pages[p], h + frt + pages[p + 1]
            while o < end:
                st, fl = d[o], d[o + 1]; o += 2
                if st & 0x20: cnt = d[o]; o += 1
                else: so = struct.unpack('<h', d[o:o + 2])[0]; o += 2
                if fl & 3 != 0: raise ValueError('non-internal fixup')
                obj = d[o] if not fl & 0x40 else struct.unpack('<H', d[o:o + 2])[0]; o += 2 if fl & 0x40 else 1
                if (st & 0xF) != 2:
                    if fl & 0x10: to = struct.unpack('<I', d[o:o + 4])[0]; o += 4
                    else: to = struct.unpack('<H', d[o:o + 2])[0]; o += 2
                else: to = 0
                tgt = s.objs[obj - 1][1] + to
                sites = [so] if not st & 0x20 else [struct.unpack('<h', d[o + 2 * k:o + 2 * k + 2])[0] for k in range(cnt)]
                if st & 0x20: o += 2 * cnt
                for so_ in sites: s.fix.append((pg2lin[p + 1] + so_, tgt, st & 0xF))
    def lin(s, fileoff):
        for vs, base, fl, pi, pc in s.objs:
            f0 = s.datapages + (pi - 1) * s.pagesize
            if f0 <= fileoff < f0 + pc * s.pagesize: return base + fileoff - f0
    def flat(s):
        """One bytes image from the lowest object base, plus that base."""
        lo = min(s.mem); hi = max(b + len(m) for b, m in s.mem.items())
        img = bytearray(hi - lo)
        for b, m in s.mem.items(): img[b - lo:b - lo + len(m)] = m
        for site, tgt, t in s.fix:
            if t == 7 and lo <= site < hi - 4: img[site - lo:site - lo + 4] = struct.pack('<I', tgt)
        return bytes(img), lo

if __name__ == '__main__':
    le = LE(sys.argv[1])
    for o in le.objs: print('obj vs=%x base=%x flags=%x' % (o[0], o[1], o[2]))
    t = le.lin(int(sys.argv[2], 16)); print('table at', hex(t), len(le.fix), 'fixups')
    for site, tgt, typ in le.fix:
        if t - 16 <= tgt <= t + 16: print('ref at', hex(site), '->', hex(tgt), 'type', typ)
