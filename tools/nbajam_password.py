"""NBA Jam (USA) SNES password decoder/encoder.

Usage: python tools/nbajam_password.py INITIALS PASSWORD   (no args: run self-test)
Mirrors bank $8A: decode $8ADB17, encode $8AD8F0, XOR table $8ADD39. A password belongs to the
initials it was made for: they set the key. See docs/nbajam_password.md.
"""
import sys

ALPHABET = "BCDFGHJKLMNPQRSTVWXYZ12345"   # password grid, in cursor order ($16C4)
LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "   # initials grid; 26 is the blank
XOR = [4, 7, 9, 3, 12, 15, 14, 10, 2, 1, 13, 5, 6, 11]   # $8ADD39
# Opponent order ($AAD13E); team t is bit 7 - t % 8 of byte t // 8 in $19EE-$19F1
TEAMS = ["Golden State", "L.A. Clippers", "L.A. Lakers", "Phoenix", "Portland", "Seattle", "Sacramento",
         "Dallas", "Denver", "Houston", "Minnesota", "San Antonio", "Utah", "Atlanta", "Charlotte", "Chicago",
         "Cleveland", "Detroit", "Indiana", "Milwaukee", "Boston", "Miami", "New Jersey", "New York", "Orlando",
         "Philadelphia", "Washington"]
ALL_TEAMS = (1 << 27) - 1


def key(initials):
    """$8ADB17/$8AD90E: 4-bit key from the three initials (grid indexes)."""
    a, c = 0, 0
    for v in list(initials) + [0x2A]:
        r = a << 1 | c                       # ROL
        a, c = r & 0xFF, r >> 8
        s = a + v + c                        # ADC
        a, c = s & 0xFF, s >> 8
    return (a >> 4 ^ a) & 0xF


def add(v, k):
    v += k
    return v - 26 if v >= 26 else v


def sub(v, k):
    v = (v - k) & 0xFF
    return (v + 26) & 0xFF if v & 0x80 else v


def rot(ab):
    """$8ADD19: rotate the low 4 bits left (bit 4 is kept, but every use masks it)."""
    ab = (ab & 0xF) << 1
    return ab | 1 if ab & 0x10 else ab


def parse_initials(s):
    s = s.upper()
    if len(s) != 3 or any(ch not in LETTERS for ch in s):
        raise ValueError("initials are 3 letters")
    return [LETTERS.index(ch) for ch in s]


def decode(initials, pw):
    """Initials and password -> dict, or ValueError where the game shows NO RECORD."""
    ini = parse_initials(initials)
    pw = pw.upper().replace(" ", "").replace("-", "")
    if len(pw) != 14 or any(ch not in ALPHABET for ch in pw):
        raise ValueError("need 14 characters from " + ALPHABET)
    c = [ALPHABET.index(ch) for ch in pw]
    k = key(ini)
    c[4] = add(c[0] & 2, c[4])
    c[0] = sub(c[0], c[4])
    c[12] = sub(c[12], c[0]) ^ XOR[12]
    c[13] = sub(c[13], c[4]) ^ XOR[13]
    check = (c[13] >> 1 & 1) << 3 | (c[13] >> 3 & 1) << 2 | (c[12] >> 1 & 1) << 1 | c[12] >> 3 & 1
    ab = check ^ 0x0A
    for y in (1, 2, 3, 5, 6, 7, 8, 9, 10, 11):
        c[y] = sub(c[y], ab & 0xF)
        ab = rot(ab)
    total = 0
    for y, op in enumerate("SASSASPAPSSA"):     # $8ADCC6 S, $8ADCE3 A, $8ADCB2 P
        v = sub(c[y], k) if op == "S" else add(c[y], k) if op == "A" else c[y]
        c[y] = v ^ XOR[y]
        total += c[y]
    if total & 0xF != check:
        raise ValueError("bad checksum")
    team = [0x80, 0x80, 0x80, 0x08]   # $1C14-$1C17; the set bit marks how many bits are still to come
    i = 3
    for y in range(13, -1, -1):
        a = c[y]
        for _ in range(2):            # $8ADC9B: bits 0 and 2 of each character
            out = team[i] & 1
            team[i] = team[i] >> 1 | (a & 1) << 7
            a >>= 2
            if out:
                i -= 1
    team[3] &= 0xE0
    stat = lambda ys: sum((c[y] >> 1 & 1) << (7 - 2 * n) | (c[y] >> 3 & 1) << (6 - 2 * n) for n, y in enumerate(ys))
    mask = int.from_bytes(bytes(team), "big") >> 5
    return {
        "wins": stat((3, 2, 1, 0)),               # $188E
        "losses": stat((7, 6, 5, 4)),             # $188F
        "streak": -stat((11, 10, 9, 8)) & 0xFF,   # $1890, stored negated
        "teams": mask,                            # $19EE-$19F1, bit 26 = Golden State ... bit 0 = Washington
    }


def encode(initials, f):
    """Initials and dict as returned by decode() -> password, as $8AD8F0 builds it."""
    ini = parse_initials(initials)
    k = key(ini)
    team = list((f["teams"] << 5 & 0xFFFFFFFF).to_bytes(4, "big"))
    bits = [team[i // 8] >> (7 - i % 8) & 1 for i in range(28)]   # $8ADAC8 hands them out MSB first
    c, total, ptr = [0] * 14, 0, 0

    def pack(y, a, op, key_=k, count=True):
        nonlocal total, ptr
        v = 0
        for _ in range(2):              # stat bit, team bit, stat bit, team bit
            v = v << 1 | (a & 1)
            a >>= 1
            v = v << 1 | bits.pop(0)
        if count:
            total += v
        v ^= XOR[ptr]
        ptr += 1
        c[y] = add(v, key_) if op == "A" else sub(v, key_) if op == "S" else v
        return a

    a = f["wins"]
    for y, op in zip((0, 1, 2, 3), "ASAA"):            # $8ADA20 A, $8ADA8E S, $8AD9EF P
        a = pack(y, a, op)
    a = f["losses"]
    for y, op in zip((4, 5, 6, 7), "SAPS"):
        a = pack(y, a, op)
    a = -f["streak"] & 0xFF
    for y, op in zip((8, 9, 10, 11), "PAAS"):
        a = pack(y, a, op)
    check = total & 0xF
    a = pack(12, check, "A", c[0], False)               # $8ADA5C, keyed by the first character
    pack(13, a, "A", c[4], False)
    ab = total ^ 0x0A
    for y in (1, 2, 3, 5, 6, 7, 8, 9, 10, 11):
        c[y] = add(c[y], ab & 0xF)
        ab = rot(ab)
    c[0] = add(c[4], c[0])
    c[4] = sub(c[4], c[0] & 2)
    return "".join(ALPHABET[v] for v in c)


def show(d):
    beaten = [t for i, t in enumerate(TEAMS) if d["teams"] >> (26 - i) & 1]
    return {**{k: v for k, v in d.items() if k != "teams"}, "teams_beaten": len(beaten), "beaten": beaten}


# Published cheat passwords; both also decode the same way in the game (tools/nbajam_romcheck.py)
KNOWN = {("LJP", "Z443C1WY434S2J"): ("all 27 teams beaten", dict(wins=27, losses=0, streak=27, teams=ALL_TEAMS)),
         ("RAT", "12345432123454"): ("173-game win streak", dict(wins=108, losses=117, streak=173, teams=0x761BEF6))}


def self_test():
    import random
    for (ini, pw), (_, f) in KNOWN.items():
        assert decode(ini, pw) == f, (ini, pw)
    assert encode("RAT", KNOWN["RAT", "12345432123454"][1]) == "HJ345LKJ1JKLML"   # what the game shows for it
    rnd = random.Random(1)
    for _ in range(20000):
        ini = "".join(rnd.choice(LETTERS) for _ in range(3))
        f = {"wins": rnd.randrange(256), "losses": rnd.randrange(256), "streak": rnd.randrange(256),
             "teams": rnd.randrange(ALL_TEAMS + 1)}
        pw = encode(ini, f)
        assert decode(ini, pw) == f, (ini, f, pw)
    print("ok")


if __name__ == "__main__":
    args = sys.argv[1:]
    if not args:
        self_test()
        for (ini, pw), (note, _) in KNOWN.items():
            print(ini, pw, note, show(decode(ini, pw)))
    else:
        print(args[0], args[1], show(decode(args[0], args[1])))
