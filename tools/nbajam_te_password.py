"""NBA Jam Tournament Edition Game Boy / Game Gear password decoder/encoder.

Usage: python tools/nbajam_te_password.py INITIALS PASSWORD   (no args: run self-test)
Mirrors the Game Boy cartridge, bank 1: encode $66E2, decode $68D0, tables $6A8E/$6A98, alphabet $68B0.
The Game Gear has the same tables and accepts the same passwords. See docs/nbajam_password.md.
"""
import sys

ALPHABET = "BCDFGHJKLNPQRTVWXYZ1234567"   # $68B0
LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "   # initials grid; 26 is the blank
XOR = [0x0E, 0x0A, 0x01, 0x05, 0x0F, 0x03, 0x0B, 0x0D, 0x0C, 0x02]   # $6A8E
ADD = [0x0F, 0x01, 0x06, 0x09, 0x0A, 0x04, 0x05, 0x0B, 0x02, 0x03]   # $6A98
# The order teams are beaten in ($1226; Game Gear $06A4): "teams" counts how far along it you are
LADDER = ["Dallas", "Minnesota", "Miami", "Washington", "Philadelphia", "Sacramento", "Milwaukee", "Denver",
          "Golden State", "San Antonio", "Seattle", "Atlanta", "Orlando", "L.A. Clippers", "New Jersey", "Charlotte",
          "Boston", "Cleveland", "Detroit", "Indiana", "L.A. Lakers", "Utah", "New York", "Portland", "Phoenix",
          "Chicago", "Houston"]


def key(initials):
    """$66E2: 4-bit key from the initials (grid indexes), the same formula as the Super Nintendo's."""
    a, c = initials[0], 0
    for v in (initials[1], initials[2], 0x2A):
        r = a << 1 | c
        a, c = r & 0xFF, r >> 8
        s = a + v + c
        a, c = s & 0xFF, s >> 8
    return (a >> 4 ^ a) & 0xF


def parse_initials(s):
    s = s.upper().replace("_", " ")
    if len(s) != 3 or any(ch not in LETTERS for ch in s):
        raise ValueError("initials are 3 letters")
    return [LETTERS.index(ch) for ch in s]


def decode(initials, pw):
    """$68D0. Returns wins, losses, streak, teams; raises ValueError where the game shows NO RECORD."""
    k = key(parse_initials(initials))
    pw = pw.upper().replace(" ", "").replace("-", "")
    if len(pw) != 10 or any(ch not in ALPHABET for ch in pw):
        raise ValueError("need 10 characters from " + ALPHABET)
    v = []
    for i, ch in enumerate(pw):
        a = (ALPHABET.index(ch) - k - ADD[i]) & 0xFF
        while a & 0x80:
            a = (a + 26) & 0xFF
        v.append(a ^ XOR[i])
    r = v[9] & 7                                  # rotation count, kept in the last character
    v[9] &= 8
    for _ in range(r):                            # rotate characters 0-8 left one bit, as one 36-bit chain
        c = 0
        for j in range(8, -1, -1):
            a = (v[j] << 1 | c) & 0xFF
            c, v[j] = a >> 4 & 1, a & 0xF
        v[8] |= c
    if ((v[0] + v[1]) & 0xFF ^ k) & 7 != r:
        raise ValueError("bad checksum")
    for i in range(9):
        v[i] ^= 5 ^ i
    c1, c2 = v[3], v[8]                           # checksum: sum of (index + 1) * value, low/high nibble
    v[3] = v[8] = 0
    s = sum((i + 1) * x for i, x in enumerate(v)) & 0xFF
    if s & 0xF != c1 or s >> 4 != c2:
        raise ValueError("bad checksum")
    v[7] ^= v[1]
    v[6] ^= v[2]
    v[5] ^= v[4]
    wins = ((v[6] & 5) << 1 | v[5] & 5) << 4 | v[0] & 5 | v[2] & 0xA
    losses = ((v[4] & 0xA) >> 1 | v[5] & 0xA) << 4 | v[0] & 0xA | v[1] & 5
    streak = ((v[7] & 5) << 2 | v[7] & 0xA) << 3 & 0xFF | v[1] & 0xA | v[2] & 5
    teams = v[9] << 1 | v[4] & 5 | v[6] & 0xA
    if streak > wins or teams > wins:             # $668F
        raise ValueError("bad checksum")
    return {"wins": wins, "losses": losses, "streak": streak, "teams": teams}


def encode(initials, f):
    """$66E2: the password the stats screen shows for record f (wins, losses, streak, teams)."""
    k = key(parse_initials(initials))
    w, l, s, t = f["wins"], f["losses"], f["streak"], f["teams"]
    x = s >> 3 & 0x1E
    v = [w & 5 | l & 0xA, l & 5 | s & 0xA, w & 0xA | s & 5, 0, t & 5 | (l >> 4 & 5) << 1,
         w >> 4 & 5 | l >> 4 & 0xA, (w >> 4 & 0xA) >> 1 | t & 0xA, x >> 2 & 1 | x & 2 | x >> 2 & 4 | x & 8, 0, t >> 1 & 8]
    v[7] ^= v[1]
    v[6] ^= v[2]
    v[5] ^= v[4]
    total = sum((i + 1) * x for i, x in enumerate(v)) & 0xFF
    v[3], v[8] = total & 0xF, total >> 4
    for i in range(9):
        v[i] ^= 5 ^ i
    r = ((v[0] + v[1]) & 0xFF ^ k) & 7
    v[9] |= r
    for _ in range(r):                            # $6833: rotate the chain right one bit
        c = 0
        for j in range(9):
            nc = 8 if v[j] & 1 else 0
            v[j], c = v[j] >> 1 | c, nc
        v[0] |= c
    return "".join(ALPHABET[((v[i] ^ XOR[i]) + ADD[i] + k) % 26] for i in range(10))


def self_test():
    import random
    # Made by the game: RAT, 100-7, streak 50, 20 teams; the Game Gear's stats screen shows the same password
    f = {"wins": 100, "losses": 7, "streak": 50, "teams": 20}
    assert decode("RAT", "BZZ6DZ37KY") == f and encode("RAT", f) == "BZZ6DZ37KY"
    rnd = random.Random(1)
    for _ in range(20000):
        ini = "".join(rnd.choice(LETTERS) for _ in range(3))
        w = rnd.randrange(256)
        f = {"wins": w, "losses": rnd.randrange(256), "streak": rnd.randrange(w + 1), "teams": rnd.randrange(min(w, 27) + 1)}
        assert decode(ini, encode(ini, f)) == f, (ini, f)
    print("RAT BZZ6DZ37KY", decode("RAT", "BZZ6DZ37KY"))
    print("20000 round trips ok")


if __name__ == "__main__":
    if len(sys.argv) == 3:
        d = decode(sys.argv[1], sys.argv[2])
        print(d, "next:", LADDER[d["teams"]] if d["teams"] < 27 else "all 27 beaten")
    else:
        self_test()
