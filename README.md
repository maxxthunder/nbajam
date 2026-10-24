# NBA Jam — Password Checker and Secret Codes

**[Password checker →](https://maxxthunder.github.io/nbajam/)** &nbsp; **[Secret codes →](https://maxxthunder.github.io/nbajam/codes.html)** &nbsp;[![v1.2.2](https://img.shields.io/badge/version-1.2.2-e8742c)](CHANGELOG.md)

<p align="center"><img src="docs/images/stats_screen.png" alt="The stats screen for LJP / Z443C1WY434S2J: rank 1, 27 W 0 L, streak 27 wins" width="384"></p>

- **Check a password**: type your initials and the password (14 characters for NBA Jam, 10 for Tournament Edition),
  and it tells you whether the game will take them.
- **See what it holds**: wins, losses, percentage, win streak, and which of the 27 NBA teams you've beaten.
- **Secret codes**: every secret character and hidden code, read straight from the games, for Super Nintendo,
  Genesis, arcade, Game Boy, Game Gear, Sega CD, Tournament Edition on arcade, Super Nintendo, Genesis, 32X,
  Saturn, PlayStation, PC, Jaguar, Game Boy and Game Gear, and NBA Hangtime and Maximum Hangtime on arcade, N64,
  PlayStation, Super Nintendo and Genesis.

Both pages work offline too: save [`tools/nbajam_password_checker.html`](tools/nbajam_password_checker.html) or
[`tools/nbajam_codes.html`](tools/nbajam_codes.html) and open it in a browser (the codes page needs `tools/img/` and
`tools/audio/` next to it for pictures and sound).

## What's on the codes page

| Version | Secret characters | Match-up codes | Also |
|---------|:-:|:-:|------|
| NBA Jam: arcade | ✓ | ✓ | tank game, hidden menu and copyright screen, preset records |
| NBA Jam: Super Nintendo, Genesis | ✓ | ✓ | passwords (SNES), announcer codes (Genesis) |
| NBA Jam: Sega CD, Game Boy, Game Gear | ✓ | ✓ | |
| Tournament Edition: arcade | ✓ | ✓ | hidden menu, preset records, other codes |
| Tournament Edition: Super Nintendo, Genesis, 32X | ✓ | ✓ | hidden title-menu codes |
| Tournament Edition: Saturn, PlayStation | ✓ | ✓ | preset records, three cut PlayStation characters |
| Tournament Edition: PC, Jaguar | ✓ | ✓ | Jaguar keypad codes |
| Tournament Edition: Game Boy, Game Gear | ✓ | | |
| NBA Hangtime, Maximum Hangtime: arcade | ✓ (name and PIN) | ✓ | joystick codes |
| NBA Hangtime: N64, PlayStation | ✓ (read from the game) | ✓ (read from the game) | joystick codes |
| NBA Hangtime: Super Nintendo, Genesis | | ✓ (read from the game) | preset records, joystick codes, Genesis options screen |

Every code was entered in an emulator unless its card says otherwise.

## What's new here

The codes page marks 130 codes that no published list had with **★ New**:

- **Match-up codes nobody had listed**: the Sega CD's seven button sequences, 12 of the 32X's 18, 8 of the PC's 19,
  and a code on Super Nintendo, Genesis and 32X that the game recognises but never applies (probably a cut power-up).
- **Hidden codes**: Tournament Edition title-menu codes (a record one team short of the All-Stars, and the 32X's
  own codes), the Jaguar's cartridge-memory clear and its random secret character for 27-team records, and the
  arcade's Secret Midway Menu, tank-game reward and hidden copyright message.
- **Preset records**: the 23 records the arcade games write into their memory; the 13 that aren't secret characters
  open a saved record.
- **Cut characters**: three finished PlayStation characters with no code (Wright, Kita, Sprite Boy).
- **Characters**: Dennis Rodman in two arcade Tournament Edition revisions, and the prototype and revision 2.1
  birthdays.
- **Leftovers in the research notes**: Iguana's crash screen and the Team Player error screen on Genesis, the Genesis
  Rev 1 region lock, the Super Nintendo's controller warnings, the Sega CD's cut advert breaks, a Saturn dunk clip
  nothing plays, and the Jaguar's BLARG, a player ID with too little behind it to be shown.
- **NBA Hangtime**: M-DOC, which can't be entered in NBA Hangtime or on N64; the published 6-1-6 that does nothing;
  a four-at-once joystick code and the Down press that locks the numbers; the "HOTSPOTS ON" flag already in NBA
  Hangtime with nothing to set it; Maximum Hangtime's 21 extra NBA players; two unpublished Super Nintendo joystick
  codes, and that all eight codes together play its cheat ending; the Genesis options-screen credits code, and
  the Genesis no-arrows code that never applies; the arcade trivia contest's password, reached only after a full
  game; the European N64 cartridge's working M-DOC.
- **Betas**: the Japanese NBA Jam beta's 11 secret characters, four of them dinosaurs (in the
  [research notes](docs/variants.md)).
- **Genesis announcer codes**: initials that play a speech clip, with the clips on the page.

Published codes that don't work as printed (wrong buttons, missing presses, codes that do nothing) are corrected on
their cards.

## Passwords by version

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

## Known passwords

All are valid in the game and decode to the record they were made with.

| Game | Initials | Password | Record |
|------|----------|----------|--------|
| NBA Jam | `LJP` | `Z443C1WY434S2J` | 27–0, streak 27, all 27 teams beaten |
| NBA Jam | `HRY` | `QF3B43TQJY55TF` | 86–0, streak 86, all 27 teams beaten (turns on juice mode) |
| NBA Jam | `RAT` | `12345432123454` | 108–117, streak 173, 18 teams beaten |
| Tournament Edition (Game Boy, Game Gear) | `RAT` | `BZZ6DZ37KY` | 100–7, streak 50, 20 teams beaten |

<details>
<summary><b>Research notes</b></summary>

Everything here comes from disassembling the games and checking the results in emulators: Mesen 2 (Super
Nintendo), BizHawk (Genesis, 32X, Sega CD, Game Boy, Game Gear, Saturn, PlayStation, Jaguar), MAME (arcade) and
DOSBox-X (PC).

- **NBA Jam password.** 14 characters hold wins, losses and win streak (8 bits each), the 27 teams beaten, and a
  4-bit checksum, scrambled with a key made from the initials. The Game Boy and Game Gear use the same scheme.
- **Tournament Edition password** (Game Boy, Game Gear). 10 characters hold wins, losses, streak and how far
  along the 27-team ladder you are, with the same initials key. [Both formats →](docs/nbajam_password.md)
- **Why passwords.** The Super Nintendo keeps its 88 records in RAM: they survive a reset but not power-off. The
  Genesis cartridge has an EEPROM, so its stats screen shows `LAST PLAYED` instead of a password.

| Notes | Covers |
|-------|--------|
| [docs/nbajam_password.md](docs/nbajam_password.md) | Both password formats, key, encoder and decoder |
| [docs/secrets.md](docs/secrets.md) | NBA Jam on Super Nintendo, Genesis, Game Boy, Game Gear and Sega CD |
| [docs/te_consoles.md](docs/te_consoles.md) | Tournament Edition on every home version, including the match-up tables |
| [docs/arcade.md](docs/arcade.md) | The original arcade game |
| [docs/arcade_te.md](docs/arcade_te.md) | Arcade Tournament Edition, all nine revisions |
| [docs/hangtime.md](docs/hangtime.md) | NBA Hangtime and Maximum Hangtime, arcade and home |
| [docs/variants.md](docs/variants.md) | Betas, prototypes and regional versions |

</details>

<details>
<summary><b>Under the hood</b></summary>

The password tools also run from the command line, with Python 3.8 or newer and no ROMs needed
(with no arguments, each runs its self-test):

```bash
python tools/nbajam_password.py LJP Z443C1WY434S2J
```

```bash
python tools/nbajam_te_password.py RAT BZZ6DZ37KY
```

| Path | Contents |
|------|----------|
| `tools/nbajam_password.py` | NBA Jam password decoder and encoder |
| `tools/nbajam_te_password.py` | Tournament Edition (Game Boy, Game Gear) password decoder and encoder |
| `tools/nbajam_password_checker.html` | The checker web page |
| `tools/nbajam_codes.html` | The secret codes page |
| `tools/img/`, `tools/audio/` | Portraits, logos and announcer clips for the codes page |
| `tools/check_checker.py` | Checks that the page's JavaScript agrees with both Python tools (needs Node.js) |
| `tools/check_codes.py` | Decodes every password on the codes page and in the README and checks it against the record it's listed with |
| `tools/nbajam_romcheck.py` | Checks `nbajam_password.py` against the game's own code in Mesen 2 (needs the ROM) |
| `tools/disasm.py`, `tools/reasm.py` | SNES disassembler and reassembler |
| `tools/dis/` | Small disassemblers (68000, SH-2, Z80, SM83, MIPS), a DOS/4GW LE reader, and Game Boy / Game Gear pad-check scanners (need `capstone` for 68000, SH-2 and MIPS) |
| `tools/emu/` | Scripted runners for BizHawk, MAME, Mesen 2 and DOSBox-X (set `EMUHAWK`, `MAME`, `MESEN`, `DOSBOX`) |
| `tools/tests/` | The tests run for the codes page: match-up codes (Super Nintendo, Genesis, 32X, PlayStation, Saturn, Jaguar, arcade), the PlayStation cut characters, the Super Nintendo 27-team juice mode, the Genesis hidden screens, the Jaguar's BLARG, the arcade's unused DIP switches, and NBA Hangtime's names and match-up codes |
| `disasm/snes/` | 65816 listings of the original ROM, one file per 32 KB bank |
| `disasm/names.txt`, `disasm/entries.txt` | Names for routines and RAM; code addresses seen running in Mesen |
| [CHANGELOG.md](CHANGELOG.md) | What changed in each version |

To rebuild the listings, put `NBA Jam (USA).sfc` in `roms/` (`.gitignore` keeps that folder out of commits):

```bash
python tools/disasm.py "roms/NBA Jam (USA).sfc" disasm/snes
python tools/reasm.py disasm/snes "roms/NBA Jam (USA).sfc"
```

</details>

## Credits

*NBA Jam* and *NBA Jam Tournament Edition* are by Midway; Acclaim published the home versions. *NBA Hangtime* and
*Maximum Hangtime* are by Midway; its Super Nintendo and Genesis versions are Funcom's. Screenshots, portraits and clips are from the games running in Mesen 2, BizHawk, MAME and
DOSBox-X. The ROMs are not included in this repo.

## License

The code and docs are [MIT](LICENSE). The game logos, portraits, screenshots and announcer clips come from
the games and belong to their owners.
