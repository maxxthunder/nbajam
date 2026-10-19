# NBA Jam — Password Checker

**[Open the password checker →](https://maxxthunder.github.io/nbajam/)** &nbsp;[![v1.1.0](https://img.shields.io/badge/version-1.1.0-e8742c)](CHANGELOG.md)

<p align="center"><img src="docs/images/stats_screen.png" alt="The stats screen for LJP / Z443C1WY434S2J: rank 1, 27 W 0 L, streak 27 wins" width="384"></p>

- **Check a password**: type your initials and the password (14 characters for NBA Jam, 10 for Tournament Edition), and it tells you whether the game will take them.
- **See what it holds**: wins, losses, percentage, win streak, and which of the 27 NBA teams you've beaten.

- **Secret codes**: every secret character and hidden code, for Super Nintendo, Genesis, arcade, Game Boy, Game Gear, Sega CD, and Tournament Edition on arcade, Super Nintendo, Genesis, 32X, Saturn, PlayStation, PC, Jaguar, Game Boy and Game Gear. [Open the codes page →](https://maxxthunder.github.io/nbajam/codes.html)

It works offline too: save [`tools/nbajam_password_checker.html`](tools/nbajam_password_checker.html) and open it in a browser.

## Supported versions

| Game | Passwords |
|------|-----------|
| NBA Jam: Super Nintendo (original and Rev 1), Game Boy, Game Gear | Yes, 14 characters, one scheme: a password works on all of them |
| NBA Jam: Genesis / Mega Drive, Sega CD | None: records are saved |
| Tournament Edition: Game Boy, Game Gear | Yes, 10 characters, a scheme of their own, shared by both |
| Tournament Edition: every other version | None: records are saved |

## If a password won't work

- **Initials.** A password only works with the initials it was made for. The initials are part of its key.
- **Typo.** NBA Jam passwords use `BCDFGHJKLMNPQRSTVWXYZ12345` (no vowels, digits 1 to 5); Tournament Edition uses
  `BCDFGHJKLNPQRTVWXYZ1234567` (no vowels, M or S, digits 1 to 7).
- **All the characters.** The game checks the password when you type the last one. Choosing EX
  before that starts a new record.

## Published passwords

Both are valid in the game, and decode to the record they were posted with.

| Initials | Password | Record |
|----------|----------|--------|
| `LJP` | `Z443C1WY434S2J` | 27–0, streak 27, all 27 teams beaten |
| `RAT` | `12345432123454` | 108–117, streak 173, 18 teams beaten |

<details>
<summary><b>Research notes</b></summary>

The checker rests on the password code in a byte-exact disassembly of the Super Nintendo ROM, and was
checked against the game's own code running in an emulator.

- **Format.** 14 characters hold wins, losses and win streak (8 bits each), the 27 teams beaten, and a
  4-bit checksum. Everything is scrambled with a key made from the initials. [Format →](docs/nbajam_password.md)
- **Records live in RAM.** The game keeps 88 records with a checksum, so they survive a reset but not
  power-off. That's what the password is for.
- **Genesis.** The cartridge has an EEPROM and keeps the records itself, so its stats screen shows
  `LAST PLAYED` instead of a password.

</details>

<details>
<summary><b>Under the hood</b></summary>

The password tool also runs from the command line, with Python 3.8 or newer and no ROMs needed
(with no arguments, it runs its self-test):

```bash
python tools/nbajam_password.py LJP Z443C1WY434S2J
```

| Path | Contents |
|------|----------|
| [docs/nbajam_password.md](docs/nbajam_password.md) | The password format, key, encoder and decoder |
| `tools/nbajam_password.py` | Password decoder and encoder |
| `tools/nbajam_password_checker.html` | The checker web page |
| `tools/nbajam_codes.html` | The secret codes page |
| `tools/check_checker.py` | Checks that the page's JavaScript agrees with `nbajam_password.py` (needs Node.js) |
| `tools/nbajam_romcheck.py` | Checks `nbajam_password.py` against the game's own code in Mesen 2 (needs the ROM) |
| `tools/disasm.py`, `tools/reasm.py` | SNES disassembler and reassembler |
| `disasm/snes/` | 65816 listings of the original ROM, one file per 32 KB bank |
| `disasm/names.txt`, `disasm/entries.txt` | Names for routines and RAM; code addresses seen running in Mesen |
| [CHANGELOG.md](CHANGELOG.md) | What changed in each version of the checker |

To rebuild the listings, put `NBA Jam (USA).sfc` in the repo root (`.gitignore` keeps ROMs out of commits):

```bash
python tools/disasm.py "NBA Jam (USA).sfc" disasm/snes
python tools/reasm.py disasm/snes "NBA Jam (USA).sfc"
```

</details>

## Credits

*NBA Jam* is by Midway; the Super Nintendo version was programmed by Iguana Entertainment and published by
Acclaim. The screenshot is from the game running in Mesen 2. The ROMs are not included in this repo.
