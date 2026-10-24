# NBA Hangtime and Maximum Hangtime

Midway's 1996 follow-up runs on the Wolf unit (TMS34010, like NBA Jam). Versions looked at here: the arcade NBA Hangtime
(L1.3 10/10/96, the MAME parent `nbahangt`, plus L1.1, L1.2 and M1.1-M1.3), arcade Maximum Hangtime (`nbamht` L1.03,
`nbamhtl10`, `nbamhtm10` and the L0.9 prototype `nbamhtp`), and the home versions on N64, PlayStation, Super
Nintendo and Genesis. The PC disc packs its game into an InstallShield `DATA.Z` that wasn't unpacked, so the PC
version isn't covered.

Arcade addresses are TMS34010 bit addresses (as MAME shows them); the program ROM is `u54`/`u63` interleaved and
mapped at `FF800000h`, so file offset = (address - `FF800000h`) / 8.

## Arcade: secret players

There are no initials and birthdays here: you create a player with a six-letter name and a four-digit PIN. The check
(`FFAB8C70h`) compares the entry's ten 16-bit words with a table at `FFAB9200h` (61 entries of 20 bytes, all
revisions of NBA Hangtime). A letter is stored as A = 1 ... Z = 26, a typed space as 29, and letters after END as 0; a
PIN digit is stored as digit + 1, and the PIN grid's SPC key as 11. All ten words must match exactly.

| Name | PIN | In game | | Name | PIN | In game |
|------|-----|---------|-|------|-----|---------|
| `JAPPLE` | 6660 | Japple | | `JASON` | 0729 | Air Morris (another head) |
| `DIVITA` | 0201 | Divita | | `QUIN` | 0330 | Quinn |
| `TURMEL` | 0322 | Turmell | | `PERRY` | 3500 | Perry |
| `DANIEL` | 0604 | Thompson | | `NFUNK` | 0101 | Funk |
| `EUGENE` | 6767 | Geer | | `MDOC` | 2 0 ? ? | M-Doc (can't be entered) |
| `JC` | 0000 | Carlton | | `NOBUD` | 1010 | Funk (another head) |
| `JFER` | 0503 | Hedrick | | `MARIUS` | 1005 | Muresan (an old man) |
| `JONHEY` | 6000 | Hey | | `MUNDAY` | 5432 | Munday |
| `MORRIS` | 6000 | Air Morris | | `NORTH` | 5050 | North |
| `BARDO` | 6000 | Bardo | | `AMRICH` | 2020 | Amrich |
| `MINIFE` | 6000 | Minifee | | `JIGGET` | 1010 | Jiggetts |
| `MARTY` | 1010 | Martinez | | `PIPPEN` | 0000 | Pippen |
| `CARLOS` | 1010 | Pesina | | `RODMAN` | 0000 | Rodman |
| `SHAWN` | 0123 | Liptak | | `JOHNSN` | 0000 | Johnson |
| `EDDIE` | 6213 | Ferrier | | `RICE` | 0000 | Rice |
| `MXV` | 1014 | Vinikour | | `KIDD` | 0000 | Kidd |
| `JAMIE` | 1000 | Rivett | | `MOTUMB` | 0000 | Mutombo |
| `NICK` | 7000 | Ehrlich | | `GHILL` | 0000 | Hill |
| `ROOT` | 6000 | Root | | `DREAM` | 0000 | Olajuwon |
| `MEDNIK` | 6000 | Mednick | | `MILLER` | 0000 | Miller |
| `DANR` | 0000 | Roan | | `SMITS` | 0000 | Smits |
| `PATF` | 2000 | Fitzgerald | | `MOURNG` | 0000 | Mourning |
| `KOMBAT` | 0004 | Boon | | `GLENNR` | 0000 | Robinson |
| `MORTAL` | 0004 | Tobias | | `WEBB` | 0000 | Webb |
| `SNO` | 0103 | Oursler | | `EWING`, `STARKS`, `AHRDWY`, `HGRANT`, `STACKH`, `CLIFFR`, `DAVIDR`, `ELLIOT`, `KEMP`, `MALONE`, `WEBBER`, `MURSAN` | 0000 | |

"In game" is the name the scoreboard shows at tip-off. All 61 were checked in MAME by writing each entry's ten words
into the player's entry at the moment the check reads the table, then going on to team select (portrait) and
tip-off (name); `TURMEL`/0322 and `JC`/END/0000 were also typed on the grids.

**M-DOC can't be entered.** Its PIN words are 3, 1, 0, 0. Typed digits are 1-10 and SPC is 11, DEL only deletes, and
letting the PIN timer run out goes on to team select without a match, so the last two words can never be 0. Maximum
Hangtime stores it as 2000 and it works there (typed in MAME).

Next to the table there's a second list, of nine default saved records (`TURMEL0000` ... `MARTIN0000` at
`FFA627E0h`) that a new CMOS starts with, and the program still carries NBA Jam's hidden copyright message, every letter
doubled ("NNBBAA  JJAAMM  --  CCOOPPYYRRIIGGHHTT  11999933 ...", file offset `0x5CB54`).

## Arcade: Tonight's Match-Up codes

The screen shows three digits, the presses of Turbo, Shoot and Pass. Each player's are packed into one word
(`@1141840h` + 0x10 per player, Turbo in the hundreds nibble); holding the joystick while pressing counts a digit down
instead of up, and digits wrap from 9 to 0 (`FFB60BB0h`). When the screen ends, `FFB62A40h` compares each word with a
13-entry table at `FFB624C0h` and sets that player's bit in the code's flag word (`@1136C20h` + 0x10 per code):

| Code | Effect | Flag |
|------|--------|------|
| 1-1-1 | Tournament mode (all human players must enter it) | `@1136C20h` |
| 0-2-5 | Baby-sized players | `@1136C30h` |
| 0-4-8 | No music | `@1136C40h` |
| 9-3-7 | No goaltending | `@1136C50h` |
| 6-1-6 | **Nothing** | `@1136C60h` |
| 7-0-9 | Quick hands | `@1136C70h` |
| 8-0-2 | Max power | `@1136C80h` |
| 2-8-4 | Max speed | `@1136C90h` |
| 5-5-2 | Hyper speed | `@1136CA0h` |
| 2-7-3 | Stealth turbo | `@1136CB0h` |
| 4-6-1 | Unlimited turbo | `@1136CC0h` |
| 3-9-0 | No pushing | `@1136CD0h` |
| 1-2-0 | Fast passing | `@1136CE0h` |

Checked in MAME: each code (entered on player 1's buttons) sets its flag, and tip-off shows its caption ("BABY SIZED
PLAYERS!", "GOAL TENDING", "QUICK HANDS", "MAX. POWER", "MAX. SPEED", "HYPER SPEED", "STEALTH TURBO", "UNLIM.
TURBO", "NO PUSHING", "FAST PASSING"). 0-4-8 has no caption: its flag is only read where the game picks music, so
it was not checked by ear. 1-1-1 is turned down with a sound in a one-player game, as the in-game tip says ("all
players must enter the same combination").

**6-1-6 does nothing.** It's published as max shot blocking, and the game accepts it and sets `@1136C60h`, but
that word is only ever cleared (`FF8DA760h`) and never read.

## Arcade: match-up joystick codes

A second set of codes is watched by ten small processes started per human player (list at `FF8CC130h`, started by
`FF8CBB80h` a little after the match-up screen appears). Each looks at that player's whole input state on every frame
it changes (bits: Up 1, Down 2, Left 4, Right 8, Shoot `$10`, Pass `$20`, Turbo `$40`), so "hold Right, press Pass"
is the state `$28`. Most have about a second (60 frames) from their first input; the four-at-once code has 80.

| Code | Inputs | Flag | Seen in play |
|------|--------|------|--------------|
| Big heads | Up + Pass + Turbo together | `@1136B90h` | "BIG HEAD" |
| Huge heads | Up, Up, Pass, Turbo | `@1136BA0h` | bigger heads, "BIG HEAD" |
| Shot percentage | a full clockwise turn from Up | `@1136BB0h` | "SHOT % ON" |
| No tag arrows | Left, Left, Pass, Turbo | `@1136BC0h` | "NO ARROWS" |
| No drift | Down, Down, Shoot, Turbo | `@1136BD0h` | (no caption) |
| No CPU assistance | hold Right, Pass, Pass | `@1136BE0h` | (no caption) |
| ABA ball | hold Right, Shoot, Turbo, Pass | `@1136BF0h` | red, white and blue ball |
| Rooftop court | hold Left, Turbo, Turbo | `@1136C00h` | night rooftop court |
| Four at once | Shoot, Shoot, then hold Shoot through a clockwise turn from Up | sets the four above | big heads, shot %, ABA ball, rooftop |
| Lock | any Down press | `@1136B80h` | that player's digits stop and flash |

All entered on player 1's controls in MAME (each about two seconds into the screen), checked by their flags and in
play. The Down lock explains why some published codes end in Down. The four-at-once code and the lock are on no
list we found; the published "2-0-0 + Left" outdoor court is really the rooftop code (hold Left, Turbo, Turbo), since
Turbo presses also count up the first digit.

All NBA Hangtime revisions (L1.1, L1.2, L1.3, M1.1, M1.2, M1.3) have the same two tables.

## Maximum Hangtime

Same name check and the same 13 match-up numbers. The joystick codes are rewritten (`FF8C4930h` on): the court becomes
a "COURT: STADIUM / OUTDOOR" selector on the match-up screen (Right picks the rooftop court, Left goes back; published
as "press Left", which leaves it on Stadium), and hot spots are added (Up, then Up + Shoot, twice: "HOTSPOTS ON").
Outdoor court, hot spots and big heads were checked in MAME. The name table (`FFAAF360h`) grows to 86 entries: `WEBB` is dropped (Spud
Webb becomes `SPUD`), `MDOC` is fixed to 2000, `JASON`'s PIN becomes 0, 7, 2, SPC, and 25 are added:

| Name | PIN | In game |
|------|-----|---------|
| `ZIRIN` | 1010 | Zirin |
| `HEITH` | 1079 | Bettleman |
| `MATT B` | 0184 | Bettleman (a second, younger head) |
| `K DAY` | 4242 | a cartoon basketball mascot ("FUNK" on the scoreboard) |
| `MCLOUD`, `TMILLS`, `KSMITH`, `MCKEE`, `CHAPMN`, `BENJMN`, `DOUGLS`, `SPUD`, `GILIAM`, `KEVINE`, `OAKLEY`, `RUFFIN`, `WESLEY`, `FINLEY`, `BUCK`, `PERSON`, `ALVINR`, `OMILLR`, `MURRAY`, `BENOIT`, `BSCOTT`, `MURDCK` | 0000 | NBA players |

`MDOC`, `JASON`, `ZIRIN`, `HEITH`, `MATT B`, `K DAY` and `TURMEL` were typed in MAME (L1.03); all 86 were also checked
by writing them into the check. The prototype and the other two revisions have the same table.

## N64 and PlayStation

Both keep the arcade table, packed as bytes (N64 ROM `0xA0440`; PlayStation in `PRES.BIN` inside `BIGLUMP.BIN`, file
offset `0x16C8C`), with some entries blanked out by giving them an impossible name (bytes `$21`-`$26`) or an
ASCII "0000" PIN:

- **N64:** `NOBUD`, `MARIUS`, `NORTH` and `JIGGET` blanked; `MDOC` still 2, 0, 0, 0 stored as 3, 1, 0, 0, so still
  unreachable.
- **PlayStation:** `NOBUD`, `MUNDAY`, `NORTH` and `JIGGET` blanked; `MARIUS` renamed `OLDBOY` 0505; `MDOC` fixed to
  2000.

Both also keep the arcade's 13 match-up numbers (N64 `0xA0148`, PlayStation `PRES.BIN` `0x13598`). Neither was
checked in play.

## Super Nintendo and Genesis

Funcom's 16-bit ports have no secret players. The names published for them are preset saved records:

- **Super Nintendo** (file offset `0xB516`): `CHE` 6581, `KUNGEN` 1414, `HENRIK` 6502, `JOHAN` 1911, `OLAV` 2509,
  `CHRIS` 0912, `NILS` 5555, `TORE` 1505, `TURMEL` 0000, `DIVITA` 0000, mostly Funcom staff (the credits list
  Henrik Holmdahl, Che Lalic, Olav Mørkrid, Tore Blystad, Johan Andersson, Nils Erik Hatlem). `KUNGEN` 1414 typed in
  BizHawk opens a 2-3 record with a custom character.
- **Genesis** (`$37832`, copied to the cartridge save at `$303220`): `KUNGEN` 7209, `JOHAN` 1911, `CENSOR` 1700,
  `ENRICO` 0666. `KUNGEN`, `CENSOR` and `ENRICO` typed in BizHawk each bring up their "TOP 5 DEFENSIVE PLAYER" record.
  The save is marked valid by the signature "NITEMARE" (`$300004` and `$3033C4`).

Their match-up numbers (read from the games, not entered):

- **Super Nintendo** (presses of Y, B, A; table at file offset `0x57771`): the arcade's numbers except 0-2-5 and
  0-4-8, so 11 codes.
- **Genesis** (presses of A, B, C at `$FF4B7A`-`$FF4B7C`, checked after every press against `$12A2E`): 12 codes, no
  0-2-5, and fast passing is 1-2-7 instead of 1-2-0, as published.

The Genesis also has button sequences on its options screen (`$BAF0` and nearby) that weren't followed up, and the
published joystick codes for both 16-bit versions (courts, ABA ball, the Super Nintendo's "FUNCOM" / 1993 photo) weren't
checked.

## The logo

The arcade only draws its logo as part of the full-screen title picture (ten 8-bit tiles of one composited image,
`05C8D817h` ... `05D40857h` in the image ROMs), and the N64 and PlayStation title screens are the same flattened
picture. The Genesis title puts the logo on its own planes (A and the window) over the background on plane B, so
`tools/img/logo_hangtime.png` is the Genesis logo, cut by taking the frame with plane B switched off and keeping the
pixels that don't change when it's switched back on.

## Tests

- `tools/tests/hangtime_names.lua` (MAME): writes each table entry into the name check, shoots team select and the
  tip-off scoreboard.
- `tools/tests/hangtime_matchup.lua` (MAME): enters each match-up code and logs the 13 flag words.
