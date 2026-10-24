"""Minimal Z80 disassembler (standard x/y/z decoding, CB/ED/DD/FD). Usage: z80.py file start end [load_addr]"""
import sys
R = ['b', 'c', 'd', 'e', 'h', 'l', '(hl)', 'a']; RP = ['bc', 'de', 'hl', 'sp']; RP2 = ['bc', 'de', 'hl', 'af']
CC = ['nz', 'z', 'nc', 'c', 'po', 'pe', 'p', 'm']; ALU = ['add a,', 'adc a,', 'sub ', 'sbc a,', 'and ', 'xor ', 'or ', 'cp ']
ROT = ['rlc', 'rrc', 'rl', 'rr', 'sla', 'sra', 'sll', 'srl']
def dis(d, a, pc):
    i = a; pre = None
    if d[i] in (0xDD, 0xFD): pre = 'ix' if d[i] == 0xDD else 'iy'; i += 1
    op = d[i]; i += 1
    def rr(s):
        if not pre: return s
        if s == 'hl': return pre
        if s == '(hl)':
            nonlocal i; dd = d[i]; i += 1; dd = dd - 256 if dd > 127 else dd; return f'({pre}{dd:+d})'
        return s
    n = lambda: d[i]
    if op == 0xCB:
        if pre:
            dd = d[i]; o = d[i + 1]; i += 2; dd = dd - 256 if dd > 127 else dd; r = f'({pre}{dd:+d})'
        else:
            o = d[i]; i += 1; r = R[o & 7]
        x, y = o >> 6, (o >> 3) & 7
        s = f'{ROT[y]} {r}' if x == 0 else f"{['bit', 'res', 'set'][x - 1]} {y},{r}"
        _s = s; return i - a, _s
    if op == 0xED:
        o = d[i]; i += 1; x, y, z = o >> 6, (o >> 3) & 7, o & 7
        nn = d[i] | d[i + 1] << 8
        if x == 1:
            if z == 3: i += 2; _s = (f'ld (${nn:04x}),{RP[y >> 1]}' if y % 2 == 0 else f'ld {RP[y >> 1]},(${nn:04x})'); return i - a, _s
            if z == 2: _s = f"{'sbc' if y % 2 == 0 else 'adc'} hl,{RP[y >> 1]}"; return i - a, _s
            _s = {0: f'in {R[y]},(c)', 1: f'out (c),{R[y]}', 4: 'neg', 5: 'retn', 6: 'im', 7: ['ld i,a', 'ld r,a', 'ld a,i', 'ld a,r', 'rrd', 'rld', 'nop', 'nop'][y]}[z]; return i - a, _s
        if x == 2 and z <= 3 and y >= 4: _s = ['ldi', 'cpi', 'ini', 'outi', 'ldd', 'cpd', 'ind', 'outd', 'ldir', 'cpir', 'inir', 'otir', 'lddr', 'cpdr', 'indr', 'otdr'][(y - 4) * 4 + z]; return i - a, _s
        _s = f'ed {o:02x}'; return i - a, _s
    x, y, z = op >> 6, (op >> 3) & 7, op & 7
    def nn(): nonlocal i; v = d[i] | d[i + 1] << 8; i += 2; return v
    def b(): nonlocal i; v = d[i]; i += 1; return v
    def rel(): v = b(); return (pc + (i - a) + (v - 256 if v > 127 else v)) & 0xffff
    if x == 0:
        if z == 0: _s = (['', '', 'djnz', 'jr', 'jr nz,', 'jr z,', 'jr nc,', 'jr c,'][y] + ('' if y < 4 else '') and None) or (f"{['djnz ', 'jr ', 'jr nz,', 'jr z,', 'jr nc,', 'jr c,'][y - 2]}${rel():04x}" if y >= 2 else ['nop', "ex af,af'"][y]); return i - a, _s
        if z == 1: s = f'ld {rr(RP[y >> 1])},${nn():04x}' if y % 2 == 0 else f'add {rr("hl")},{rr(RP[y >> 1])}'; _s = s; return i - a, _s
        if z == 2:
            s = ['ld (bc),a', 'ld a,(bc)', 'ld (de),a', 'ld a,(de)'][y] if y < 4 else None
            if s is None: v = nn(); s = [f'ld (${v:04x}),{rr("hl")}', f'ld {rr("hl")},(${v:04x})', f'ld (${v:04x}),a', f'ld a,(${v:04x})'][y - 4]
            _s = s; return i - a, _s
        if z == 3: _s = f"{'inc' if y % 2 == 0 else 'dec'} {rr(RP[y >> 1])}"; return i - a, _s
        if z == 4: _s = f'inc {rr(R[y])}'; return i - a, _s
        if z == 5: _s = f'dec {rr(R[y])}'; return i - a, _s
        if z == 6: r = rr(R[y]); _s = f'ld {r},${b():02x}'; return i - a, _s
        _s = ['rlca', 'rrca', 'rla', 'rra', 'daa', 'cpl', 'scf', 'ccf'][y]; return i - a, _s
    if x == 1:
        if op == 0x76: _s = 'halt'; return i - a, _s
        if pre and (y == 6 or z == 6):
            dst = rr(R[y]) if y == 6 else R[y]; src = rr(R[z]) if z == 6 else R[z]
            _s = f'ld {dst},{src}'; return i - a, _s
        _s = f'ld {rr(R[y])},{rr(R[z])}'; return i - a, _s
    if x == 2: _s = f'{ALU[y]}{rr(R[z])}'; return i - a, _s
    if z == 0: _s = f'ret {CC[y]}'; return i - a, _s
    if z == 1:
        if y % 2 == 0: _s = f'pop {rr(RP2[y >> 1])}'; return i - a, _s
        _s = ['ret', 'exx', f'jp ({rr("hl")})', f'ld sp,{rr("hl")}'][y >> 1]; return i - a, _s
    if z == 2: _s = f'jp {CC[y]},${nn():04x}'; return i - a, _s
    if z == 3:
        if y == 0: _s = f'jp ${nn():04x}'; return i - a, _s
        if y == 2: _s = f'out (${b():02x}),a'; return i - a, _s
        if y == 3: _s = f'in a,(${b():02x})'; return i - a, _s
        _s = ['', '', '', '', f'ex (sp),{rr("hl")}', 'ex de,hl', 'di', 'ei'][y]; return i - a, _s
    if z == 4: _s = f'call {CC[y]},${nn():04x}'; return i - a, _s
    if z == 5:
        if y % 2 == 0: _s = f'push {rr(RP2[y >> 1])}'; return i - a, _s
        if y == 1: _s = f'call ${nn():04x}'; return i - a, _s
    if z == 6: _s = f'{ALU[y]}${b():02x}'; return i - a, _s
    if z == 7: _s = f'rst ${y * 8:02x}'; return i - a, _s
    _s = f'db ${op:02x}'; return i - a, _s
if __name__ == '__main__':
    d = open(sys.argv[1], 'rb').read() + b'\0' * 8; a, e = int(sys.argv[2], 16), int(sys.argv[3], 16)
    load = int(sys.argv[4], 16) if len(sys.argv) > 4 else a
    while a < e:
        pc = load + (a - int(sys.argv[2], 16))
        try: n, s = dis(d, a, pc)
        except Exception as ex: n, s = 1, f'?? {ex}'
        print(f'{pc:04x}  {d[a:a + n].hex():10} {s}'); a += n
