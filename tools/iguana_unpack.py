"""Unpacker for the original Super Nintendo NBA Jam's packed graphics (the routine at $29:F3F0 in the US Rev 1 cart).

Usage: python tools/iguana_unpack.py <rom.sfc> <snes address of a block> [out.bin]
       python tools/iguana_unpack.py <rom.sfc> scan outdir    (finds and unpacks every block it can)

A block starts with a word N. At block+N is the unpacked size (word), at block+N-1 a bit count and at block+N-2 the
first partial byte of bits. The bit stream runs backwards from block+N-3, read most significant bit first, one
byte at a time, with a 1 shifted in as a marker. The output is written backwards from its end:
- 1 bit: 1 = literal run. 2 bits n; n < 3 means n+1 bytes, otherwise 1 bit k and then a value of bits(k ? 1+bit : 0),
  plus 4. The literal bytes are stored raw just below the stream position, which moves past them.
- 0 = match. 1 bit: 1 = length 2, offset of bits(1). Otherwise 1 bit: 1 = length bits(bit) + 4, 0 = length 3; then
  offset of bits(bit + 1). The match copies forward from output position + offset - 1.
bits(i) reads TABLE[i] + 1 bits, or 16 bits when TABLE[i] is $0F.
"""
import os
import sys

TABLE_ADDR, MASK_ADDR = 0x29F678, 0x29F67C


def to_off(addr):
    return (addr >> 16 & 0x7F) * 0x8000 + (addr & 0x7FFF)


def unpack(rom, addr):
    table = rom[to_off(TABLE_ADDR):to_off(TABLE_ADDR) + 4]
    masks = rom[to_off(MASK_ADDR):to_off(MASK_ADDR) + 8]
    base = to_off(addr)
    n = rom[base] | rom[base + 1] << 8
    size = rom[base + n] | rom[base + n + 1] << 8
    nbits, buf = rom[base + n - 1], rom[base + n - 2]
    pos = base + n - 3                                   # next stream byte (moves down)
    carry = 0
    if not nbits:                                        # $F432: an empty partial byte; the first flag comes from the stream
        buf = 0x80
    else:                                            # ASL, ORA mask, ROR: marks where the partial byte ends
        a = (buf << 1 & 0xFF) | masks[nbits - 1]
        carry, buf = a & 1, a >> 1 | (buf & 0x80)
    out = bytearray(size)
    dst = size
    state = {'buf': buf, 'pos': pos}

    def bit():
        b = state['buf']
        c = b >> 7
        b = b << 1 & 0xFF
        if b == 0:
            v = rom[state['pos']]
            state['pos'] -= 1
            c, b = v >> 7, (v << 1 | c) & 0xFF
        state['buf'] = b
        return c

    def bits(i):
        k = table[i]
        count = 16 if k == 0x0F else k + 1
        v = 0
        for _ in range(count):
            v = v << 1 | bit()
        return v

    done = 0
    first = bool(nbits)
    while True:
        if first:                                      # the first flag bit comes from the ROL at $F44E
            b = state['buf']
            c = b >> 7
            state['buf'] = (b << 1 | carry) & 0xFF
            first = False
        else:
            c = bit()
        if c:                                            # literal run
            k = bit() << 1 | bit()
            if k < 3:
                count = k + 1
            else:
                count = bits(1 + bit() if bit() else 0) + 4
            state['pos'] -= count
            src = state['pos'] + 1
            dst -= count
            if dst < 0 or src < base:
                raise ValueError('not a packed block')
            out[dst:dst + count] = rom[src:src + count]
            done += count
            if done >= size:
                break
        # match
        if bit():
            length, off = 2, bits(1)
        else:
            length = bits(bit()) + 4 if bit() else 3
            off = bits(bit() + 1)
        src = dst + off - 1
        dst -= length
        if dst < 0 or src + length > size or state['pos'] < base:
            raise ValueError('not a packed block')
        for i in range(length):
            out[dst + i] = out[src + i]
        done += length
        if done >= size:
            break
    return bytes(out), state['pos'] - base


def to_addr(off):
    return 0x800000 | (off // 0x8000) << 16 | 0x8000 | off % 0x8000


def scan(rom):
    """Every offset whose header is plausible and whose stream ends right after the leading word."""
    found = []
    off = 0
    while off < len(rom) - 4:
        n = rom[off] | rom[off + 1] << 8
        if 8 <= n < 0x8000 and off + n + 2 <= len(rom) and rom[off + n - 1] <= 8:
            size = rom[off + n] | rom[off + n + 1] << 8
            if n <= size <= 0xFFFF:
                try:
                    data, end = unpack(rom, to_addr(off))
                    if end in (1, 2):
                        found.append((off, n, data))
                        off += n + 2
                        continue
                except (ValueError, IndexError):
                    pass
        off += 1
    return found


if __name__ == '__main__':
    rom = open(sys.argv[1], 'rb').read()
    if sys.argv[2] == 'scan':
        os.makedirs(sys.argv[3], exist_ok=True)
        blocks = scan(rom)
        for off, n, data in blocks:
            open(os.path.join(sys.argv[3], f'{to_addr(off):06X}.bin'), 'wb').write(data)
        print(len(blocks), 'blocks,', sum(len(d) for _, _, d in blocks), 'bytes unpacked')
    else:
        data, _ = unpack(rom, int(sys.argv[2], 16))
        if len(sys.argv) > 3:
            open(sys.argv[3], 'wb').write(data)
        print(len(data), 'bytes')
