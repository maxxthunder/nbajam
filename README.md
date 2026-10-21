# NBA Jam — Password Checker and Secret Codes

**[Password checker →](https://maxxthunder.github.io/nbajam/)** &nbsp; **[Secret codes →](https://maxxthunder.github.io/nbajam/codes.html)** &nbsp;[![v1.1.4](https://img.shields.io/badge/version-1.1.4-e8742c)](CHANGELOG.md)

<p align="center"><img src="docs/images/stats_screen.png" alt="The stats screen for LJP / Z443C1WY434S2J: rank 1, 27 W 0 L, streak 27 wins" width="384"></p>

- **Check a password**: type your initials and the password (14 characters for NBA Jam, 10 for Tournament Edition),
  and it tells you whether the game will take them.
- **See what it holds**: wins, losses, percentage, win streak, and which of the 27 NBA teams you've beaten.
- **Secret codes**: every secret character and hidden code, read straight from the games, for Super Nintendo,
  Genesis, arcade, Game Boy, Game Gear, Sega CD, and Tournament Edition on arcade, Super Nintendo, Genesis, 32X,
  Saturn, PlayStation, PC, Jaguar, Game Boy and Game Gear.

Both pages work offline too: save [`tools/nbajam_password_checker.html`](tools/nbajam_password_checker.html) or
[`tools/nbajam_codes.html`](tools/nbajam_codes.html) and open it in a browser (the codes page needs `tools/img/` and
`tools/audio/` next to it for pictures and sound).

## What's new here

The codes page marks 55 codes that no published list had with **★ New**. Among them:

- **PC match-up codes.** The PC has its own 19 key sequences; 8 weren't on the published list, and three codes
  set flags the game never uses.
- **32X match-up codes.** The 32X has its own 18 sequences, not the Genesis ones; 12 weren't on any list.
- **An unused match-up code** on the Super Nintendo, Genesis and 32X: the game recognises it but never applies it,
  probably a cut power-up.
- **Three wrong Super Nintendo match-up codes** on a published list (three pointers, teleport pass, rainbow shots).
- **Hidden title-menu codes** for Tournament Edition: a record one team short of the All-Stars on Super Nintendo and
  Genesis, and the 32X's own All-Star and one-short codes.
- **Genesis announcer codes**: initials that play a speech clip, with the clips on the page to listen to.
- **Arcade**: the Secret Midway Menu (an operator stats screen), the tank game's reward, a hidden copyright
  message, Dennis Rodman in two TE revisions, and the prototype and revision 2.1 birthdays.

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

## Known passwords

All are valid in the game and decode to the record they were made with.

| Game | Initials | Password | Record |
|------|----------|----------|--------|
| NBA Jam | `LJP` | `Z443C1WY434S2J` | 27–0, streak 27, all 27 teams beaten |
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
| `tools/nbajam_romcheck.py` | Checks `nbajam_password.py` against the game's own code in Mesen 2 (needs the ROM) |
| `tools/disasm.py`, `tools/reasm.py` | SNES disassembler and reassembler |
| `disasm/snes/` | 65816 listings of the original ROM, one file per 32 KB bank |
| `disasm/names.txt`, `disasm/entries.txt` | Names for routines and RAM; code addresses seen running in Mesen |
| [CHANGELOG.md](CHANGELOG.md) | What changed in each version |

To rebuild the listings, put `NBA Jam (USA).sfc` in the repo root (`.gitignore` keeps ROMs out of commits):

```bash
python tools/disasm.py "NBA Jam (USA).sfc" disasm/snes
python tools/reasm.py disasm/snes "NBA Jam (USA).sfc"
```

</details>

## Credits

*NBA Jam* and *NBA Jam Tournament Edition* are by Midway; Acclaim published the home versions. Screenshots, portraits and clips are from the games running in Mesen 2, BizHawk, MAME and
DOSBox-X. The ROMs are not included in this repo.

## License

The code and docs are [MIT](LICENSE). The game logos, portraits, screenshots and announcer clips come from
the games and belong to their owners.
