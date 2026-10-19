# The NBA Jam password

How the Super Nintendo version of NBA Jam (1993) turns a player's record into a 14-character password,
and how it reads one back. Addresses are in the original US ROM, `NBA Jam (USA).sfc`. Rev 1 has the same
code moved `$60` bytes up (encode `$8AD950`, decode `$8ADB77`, table `$8ADD99`) and takes the same passwords.

`tools/nbajam_password.py` implements both directions. `tools/nbajam_romcheck.py` checks it against the
game's own code running in Mesen 2: 146 cases on the original ROM and 150 on Rev 1 matched, covering
valid/invalid, every decoded field, and the password the game shows back.

## The Genesis version has no passwords

The Genesis / Mega Drive cartridge declares a serial EEPROM in its header (`RA` `$E840`). It keeps the
records on the cartridge, so its stats screen shows `LAST PLAYED` where the Super Nintendo shows
`PASSWORD`, and it warns when `ALL NAMES ARE FULL`. There is no password entry screen.

## Where it appears

1. Start a game and answer **Yes** to "Enter your initials for record keeping?".
2. Type three initials. The grid is `A`–`Z`, a blank and a back arrow; the initials are stored as their
   grid index (A = 0, blank = 26).
3. The **Password** grid follows. Choose **EX** without typing anything to start a new record. Otherwise
   type all 14 characters: the game checks the password as soon as the 14th is entered.
4. The stats screen shows the record. A rejected password leaves it at **No record**.

<p align="center">
  <img src="images/password_entry.png" alt="The password grid" width="256">
  <img src="images/stats_screen.png" alt="The stats screen for LJP / Z443C1WY434S2J: 27 W 0 L, streak 27" width="256">
  <img src="images/not_defeated.png" alt="The second stats page: You have not defeated Utah" width="256">
</p>

The stats screen after a game shows the new password, made by `$8AD8F0` from the record.

## Alphabet

```
B C D F G H J K L M N P Q R S T V W X Y Z 1 2 3 4 5
```

26 characters, in the order of the on-screen grid (the cursor index, `$16C4`, is the character's value).
There is no table for it in the ROM: the grid is drawn from graphics, and the code works only with indexes.

## What it holds

| Field | RAM (record + X) | Bits | Shown as |
|-------|------------------|------|----------|
| Wins | `$188E` | 8 | `RECORD: W` |
| Losses | `$188F` | 8 | `RECORD: L` |
| Win streak | `$1890` | 8 | `STREAK: n WINS` |
| Teams beaten | `$19EE`–`$19F1` | 27 | `YOU HAVE DEFEATED` / `NEXT OPPONENT` |
| Checksum | | 4 | |

That's 51 bits; with the 4-bit checksum, 55 of the 56 bits in 14 characters. The rank (`$1891`) and the
percentage are worked out from the other records, not stored.

The teams are in the order of the opponent list, West then East: Golden State, L.A. Clippers, L.A. Lakers,
Phoenix, Portland, Seattle, Sacramento, Dallas, Denver, Houston, Minnesota, San Antonio, Utah, Atlanta,
Charlotte, Chicago, Cleveland, Detroit, Indiana, Milwaukee, Boston, Miami, New Jersey, New York, Orlando,
Philadelphia, Washington. Golden State is bit 7 of `$19EE`, and Washington is bit 5 of `$19F1`.

The game keeps 88 records in RAM (`$172E`, 4 bytes each), protected by a checksum at `$1B4E`, so they
survive a reset but not power-off. That's what the password is for.

## The key

Every step uses a 4-bit key made from the initials, so a password only works with the initials it was
made for. With the initials as grid indexes `a b c`, in 8-bit arithmetic with carry:

```
CLC; LDA a; ROL; ADC b; ROL; ADC c; ROL; ADC #$2A    ; t
key = (t >> 4 XOR t) AND $0F
```

## Encoding (`$8AD8F0`)

Each character starts as 4 bits: a stat bit, a team bit, a stat bit, a team bit (bit 3 to bit 0). Stat
bits come from the low bit of the stat up; team bits come from Golden State down.

| Characters | Stat |
|------------|------|
| 0–3 | wins |
| 4–7 | losses |
| 8–11 | the streak, negated (`EOR #$FF : INC`) |
| 12–13 | the checksum: the low 4 bits of the sum of characters 0–11 |

Each character `v` is then XORed with the next byte of the table at `$8ADD39`,
`04 07 09 03 0C 0F 0E 0A 02 01 0D 05 06 0B`, and mixed with the key, mod 26:

| Character | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 |
|-----------|---|---|---|---|---|---|---|---|---|---|----|----|----|----|
| Step | +k | −k | +k | +k | −k | +k | · | −k | · | +k | +k | −k | +c0 | +c4 |

`+k` adds the key and `−k` subtracts it, mod 26; `·` leaves it. Characters 12 and 13 use characters 0 and 4
(as they are by then) as their key, not the initials.

Then:

1. A running value starts as the sum of characters 0–11 XOR `$0A`. Characters 1–3 and 5–11 each have
   its low 4 bits added (mod 26), and after each one it rotates its low 4 bits left by one.
2. Character 0 becomes character 0 + character 4 (mod 26).
3. Character 4 becomes character 4 − (character 0 AND 2) (mod 26).

## Decoding (`$8ADB17`)

The same steps in reverse. The checksum is read back from bits 1 and 3 of characters 12 and 13, and the
password is rejected (carry set, **No record**) unless it equals the low 4 bits of the sum of
characters 0–11 after they're unscrambled. Bit 4 of the unscrambled characters is ignored, so a few
different passwords decode to the same record. The game shows the encoder's version after it loads one: for
example `RAT` / `12345432123454` loads, and the stats screen then shows `HJ345LKJ1JKLML`.

## Published passwords

Both decode in the game exactly as the tool says.

| Initials | Password | Record |
|----------|----------|--------|
| `LJP` | `Z443C1WY434S2J` | 27–0, streak 27, all 27 teams beaten |
| `RAT` | `12345432123454` | 108–117, streak 173, 18 teams beaten |
