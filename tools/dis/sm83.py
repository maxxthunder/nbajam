"""Minimal SM83 (Game Boy) disassembler. Usage: sm83.py rom start end"""
import sys
R = ['b', 'c', 'd', 'e', 'h', 'l', '(hl)', 'a']; RP = ['bc', 'de', 'hl', 'sp']; RP2 = ['bc', 'de', 'hl', 'af']; CC = ['nz', 'z', 'nc', 'c']
ALU = ['add a,', 'adc a,', 'sub ', 'sbc a,', 'and ', 'xor ', 'or ', 'cp ']
def dis(d, a):
    op = d[a]; n = d[a + 1] if a + 1 < len(d) else 0; nn = n | (d[a + 2] << 8) if a + 2 < len(d) else 0
    x, y, z = op >> 6, (op >> 3) & 7, op & 7
    if op == 0xCB:
        o = n; xs = ['rlc', 'rrc', 'rl', 'rr', 'sla', 'sra', 'swap', 'srl']
        if o < 0x40: return 2, f'{xs[o >> 3]} {R[o & 7]}'
        return 2, f"{['bit', 'res', 'set'][(o >> 6) - 1]} {(o >> 3) & 7},{R[o & 7]}"
    t = {0x00: (1, 'nop'), 0x08: (3, f'ld (${nn:04x}),sp'), 0x10: (2, 'stop'), 0x18: (2, f'jr ${(a + 2 + (n - 256 if n > 127 else n)) & 0xffff:04x}'),
         0x22: (1, 'ld (hl+),a'), 0x2A: (1, 'ld a,(hl+)'), 0x32: (1, 'ld (hl-),a'), 0x3A: (1, 'ld a,(hl-)'), 0x02: (1, 'ld (bc),a'), 0x12: (1, 'ld (de),a'),
         0x0A: (1, 'ld a,(bc)'), 0x1A: (1, 'ld a,(de)'), 0x07: (1, 'rlca'), 0x0F: (1, 'rrca'), 0x17: (1, 'rla'), 0x1F: (1, 'rra'), 0x27: (1, 'daa'), 0x2F: (1, 'cpl'),
         0x37: (1, 'scf'), 0x3F: (1, 'ccf'), 0x76: (1, 'halt'), 0xC3: (3, f'jp ${nn:04x}'), 0xCD: (3, f'call ${nn:04x}'), 0xC9: (1, 'ret'), 0xD9: (1, 'reti'),
         0xE0: (2, f'ldh ($ff{n:02x}),a'), 0xF0: (2, f'ldh a,($ff{n:02x})'), 0xE2: (1, 'ld (c),a'), 0xF2: (1, 'ld a,(c)'), 0xEA: (3, f'ld (${nn:04x}),a'),
         0xFA: (3, f'ld a,(${nn:04x})'), 0xE9: (1, 'jp hl'), 0xF9: (1, 'ld sp,hl'), 0xF3: (1, 'di'), 0xFB: (1, 'ei'), 0xE8: (2, f'add sp,{n}'), 0xF8: (2, f'ld hl,sp+{n}')}
    if op in t: return t[op]
    if x == 0:
        if z == 0 and y >= 4: return 2, f'jr {CC[y - 4]},${(a + 2 + (n - 256 if n > 127 else n)) & 0xffff:04x}'
        if z == 1: return (3, f'ld {RP[y >> 1]},${nn:04x}') if y % 2 == 0 else (1, f'add hl,{RP[y >> 1]}')
        if z == 3: return 1, f"{'inc' if y % 2 == 0 else 'dec'} {RP[y >> 1]}"
        if z == 4: return 1, f'inc {R[y]}'
        if z == 5: return 1, f'dec {R[y]}'
        if z == 6: return 2, f'ld {R[y]},${n:02x}'
    if x == 1: return 1, f'ld {R[y]},{R[z]}'
    if x == 2: return 1, f'{ALU[y]}{R[z]}'
    if z == 0 and y < 4: return 1, f'ret {CC[y]}'
    if z == 1: return 1, f'pop {RP2[y >> 1]}' if y % 2 == 0 else (1, '?')
    if z == 2 and y < 4: return 3, f'jp {CC[y]},${nn:04x}'
    if z == 4 and y < 4: return 3, f'call {CC[y]},${nn:04x}'
    if z == 5 and y % 2 == 0: return 1, f'push {RP2[y >> 1]}'
    if z == 6: return 2, f'{ALU[y]}${n:02x}'
    if z == 7: return 1, f'rst ${y * 8:02x}'
    return 1, f'db ${op:02x}'
if __name__ == '__main__':
    d = open(sys.argv[1], 'rb').read(); a, e = int(sys.argv[2], 16), int(sys.argv[3], 16)
    while a < e:
        n, s = dis(d, a); print(f'{a:05x}  {d[a:a + n].hex():8} {s}'); a += n
