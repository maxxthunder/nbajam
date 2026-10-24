"""Midway arcade image decoder for NBA Jam, Tournament Edition (T-unit) and NBA Hangtime (Wolf unit): finds image headers
in the program ROM, decodes them from the graphics ROMs and lists the ones nothing in the program points to.

Usage: python tools/arcade_gfx.py roms/nbajam.zip|nbajamte.zip|nbahangt.zip outdir [unused]
Writes <outdir>/<header bit address>.png for every header (or only the unreferenced ones with "unused") and index.txt.

Program ROM: uj12/ug12 as 16-bit words at bit address FF800000. Graphics: the 16 chips as four banks of
(ug, uj, ug, uj) bytes, 2 MB each (14/19, 16/20, 17/22, 18/23), addressed in bits from 02000000.
NBA Hangtime: u54/u63 as the words; the 20 chips in 4 MB banks of four, each bank's bytes in reverse chip order
(130-133, 126-129, 122-125, 118-121, an empty bank, 110-113), addressed in bits from 0.
Image header, 18 bytes: width, height, x anchor, y anchor (words), graphics bit offset (long), control word
(bits 12-14 bits per pixel, 0 = 8; bit 7 rows start with a skip byte, bits 8-9 / 10-11 its pre/post shift),
palette pointer (long, to a word count and then that many xRRRRRGGGGGBBBBB colours).
"""
import os
import struct
import sys
import zipfile
from PIL import Image

PROG = 0xFF800000


def load(path):
    z = zipfile.ZipFile(path)
    n = {i.filename.split('.')[-1]: i.filename for i in z.infolist() if '/' not in i.filename}
    if 'u54' in n:
        prog = bytes(b for pair in zip(z.read(n['u54']), z.read(n['u63'])) for b in pair)
        gfx = bytearray(0x1800000)
        for bank, first in {0: 130, 1: 126, 2: 122, 3: 118, 5: 110}.items():
            for lane in range(4):
                gfx[bank * 0x400000 + lane:(bank + 1) * 0x400000:4] = z.read(n[f'u{first + 3 - lane}'])
        return prog, bytes(gfx), 0, 0xC000000
    prog = bytes(b for pair in zip(z.read(n['uj12']), z.read(n['ug12'])) for b in pair)
    gfx = bytearray(0x800000)
    for bank, chips in enumerate(['14 19', '16 20', '17 22', '18 23']):
        a, b = chips.split()
        for k, chip in enumerate(('ug' + a, 'uj' + a, 'ug' + b, 'uj' + b)):
            gfx[bank * 0x200000 + k:(bank + 1) * 0x200000:4] = z.read(n[chip])
    return prog, bytes(gfx), 0x02000000, 0x4000000


def headers(prog, base, bits):
    W = lambda o: struct.unpack_from('<H', prog, o)[0]
    L = lambda o: struct.unpack_from('<I', prog, o)[0]
    for o in range(0, len(prog) - 18, 2):
        w, h, ax, ay, ga, ctl, pal = W(o), W(o + 2), W(o + 4), W(o + 6), L(o + 8), W(o + 12), L(o + 14)
        if 1 <= w <= 512 and 1 <= h <= 400 and base <= ga < base + bits and PROG <= pal and not ctl & 0x8000 \
                and not ctl & 0x7F:
            n = W((pal - PROG) // 8)
            if 1 <= n <= 256:
                yield o, w, h, ga, ctl, pal


def palette(prog, pal):
    o = (pal - PROG) // 8
    n = struct.unpack_from('<H', prog, o)[0]
    out = []
    for i in range(n):
        c = struct.unpack_from('<H', prog, o + 2 + 2 * i)[0]
        out.append(((c >> 10 & 31) * 255 // 31, (c >> 5 & 31) * 255 // 31, (c & 31) * 255 // 31))
    return out


def decode(prog, gfx, base, w, h, ga, ctl, pal):
    bpp = (ctl >> 12 & 7) or 8
    cols = palette(prog, pal)
    im = Image.new('RGBA', (w, h), (0, 0, 0, 0))
    px = im.load()
    bit = ga - base

    def take(n):
        nonlocal bit
        b = bit >> 3
        v = int.from_bytes(gfx[b:b + 3], 'little') >> (bit & 7) & ((1 << n) - 1)
        bit += n
        return v

    for y in range(h):
        pre = post = 0
        if ctl & 0x80:
            v = take(8)
            pre, post = (v & 15) << (ctl >> 8 & 3), (v >> 4) << (ctl >> 10 & 3)
        for x in range(pre, max(pre, w - post)):
            c = take(bpp)
            if c:
                px[x, y] = cols[c] + (255,) if c < len(cols) else (255, 0, 255, 255)
    return im


if __name__ == '__main__':
    prog, gfx, base, bits = load(sys.argv[1])
    out = sys.argv[2]
    os.makedirs(out, exist_ok=True)
    hs = list(headers(prog, base, bits))
    refs = set(struct.unpack_from('<I', prog, o)[0] for o in range(0, len(prog) - 3, 2))
    with open(os.path.join(out, 'index.txt'), 'w') as idx:
        for o, w, h, ga, ctl, pal in hs:
            addr = PROG + o * 8
            used = addr in refs
            idx.write(f'{addr:08X} {w}x{h} gfx={ga:08X} ctl={ctl:04X} pal={pal:08X} {"" if used else "UNREFERENCED"}\n')
            if used and 'unused' in sys.argv[3:]:
                continue
            decode(prog, gfx, base, w, h, ga, ctl, pal).save(os.path.join(out, f'{addr:08X}.png'))
    print(len(hs), 'headers,', sum(PROG + h[0] * 8 not in refs for h in hs), 'unreferenced')
