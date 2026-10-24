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

### Which flags the game reads

A MAME read/write tap over `@1136A00h`-`@1136EFFh` through a whole game (and a scan of the program for every
`MOVE` to or from the block) accounts for every word. Each joystick and match-up flag has a setter and a reader, with
two exceptions:

- `@1136C60h` (6-1-6) is read only by the match-up check that sets it.
- `@1136C10h` is the **hot spots** flag. NBA Hangtime already has the "HOTSPOTS ON" caption (the caption routine at
  `FF9EBEE0h` reads the word), but nothing sets it: the only writes are the clears at `FF89F4F0h` and `FF8DA910h`, and
  no gameplay code reads it. Forced on at the match-up in MAME, the caption shows at tip-off and nothing else happens.
  Maximum Hangtime adds the code and the hot spots themselves.

## Arcade: the trivia contest

NBA Hangtime carries a 1996 sweepstakes, "NBA HANGTIME TRIVIA GAME" (rules in the program at `FFA2E0C0h`, prizes: a trip
for two to an NBA game, an NBA Hangtime cabinet, 25 jerseys, 1,000 T-shirts; entries closed September 13, 1996). It's
an operator setting, TRIVIA CONTEST (adjustment `20h`, on from the factory). Attract mode shows the prize screen and the
"TRIVIA MASTERS" record table.

At game over (`FFA217A0h`), a player gets questions only after a full game (`@1137A30h` = 4, i.e. all four quarters)
and only while their trivia points (`@11397D0h` for player 1) are under 100 (`FFB7BAB0h`). Each question is multiple
choice, worth 2 points. At 100 points the game shows "CONTEST DRAWING QUALIFIER", then "CONGRATUATIONS !!!" (sic) and an
8-letter password to mail to a Phoenix P.O. box with your name and PIN. Checked in MAME by forcing the quarter counter
to 4 and the points to 98, then answering "What is the name of the NBA franchise in Miami?" with Heat: AAAAAA 0000 got
`EOFTCSJN`. A one-quarter game (two credits) never reaches the questions.

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

The same read/write tap on Maximum Hangtime (and a full disassembly) finds no leftover flag like NBA Hangtime's hot
spots: every joystick and match-up word has a setter and a gameplay reader except 6-1-6 (`@1136CC0h` here), which is
again read only by its own check, so it does nothing in Maximum Hangtime either.

## N64 and PlayStation

Both keep the arcade table, packed as bytes (N64 ROM `0xA0440`; PlayStation in `PRES.BIN` inside `BIGLUMP.BIN`, file
offset `0x16C8C`), with some entries blanked out by giving them an impossible name (bytes `$21`-`$26`) or an
ASCII "0000" PIN:

- **N64:** `NOBUD`, `MARIUS`, `NORTH` and `JIGGET` blanked; `MDOC` still 2, 0, 0, 0 stored as 3, 1, 0, 0, so still
  unreachable. The European cartridge's table (`0x9F600`) differs in only those two bytes: it stores 3, 1, 1, 1, so
  `MDOC` 2000 works there.
- **PlayStation:** `NOBUD`, `MUNDAY`, `NORTH` and `JIGGET` blanked; `MARIUS` renamed `OLDBOY` 0505; `MDOC` fixed to
  2000.

Both also keep the arcade's 13 match-up numbers (N64 `0xA0148`, PlayStation `PRES.BIN` `0x13598`), not checked in play.
`OLDBOY` 0505 was typed on the PlayStation in BizHawk: the old bearded head from the arcade's `MARIUS`, with hidden
attributes.

Both also keep the arcade's joystick detectors, entered in BizHawk at the match-up and found by RAM diffs:

- **N64:** A is Turbo, C-Down Shoot, C-Right Pass. The flags are 16-bit words at RDRAM `0xA6EB2` in the arcade's order
  (lock, big heads, huge heads, shot %, no arrows, no drift, no assistance, ABA ball, rooftop). All ten codes, the
  four-at-once code included, set their flags. Turns need the control stick: the same circle on the D-pad didn't count.
- **PlayStation:** Square (or any shoulder button) is Turbo, X or Triangle Shoot, Circle Pass. Big heads (`0x7320C`),
  shot % (`0x7322C`, D-pad turn), ABA ball (`0x732EC`), rooftop (`0x735DC`) and four at once (all four) were checked.

Neither has Maximum Hangtime's hot spots code.

All 63 files in the PlayStation `BIGLUMP.BIN` are named in the program, so none is orphaned. The disc also carries
`HANGTIME.MAP`, the mastering tool's log (BuildCD 2.39.b, 27 April 1997, paths under `D:\HANGTIME\VERSION\PSX\RELEASE\CD`).
It lists an earlier layout that has no `SLUS_003.29` and puts the files at other sectors.

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

### Super Nintendo joystick codes

Nine sequences, listed at `$C5B3B0` (pointer, bank) and checked every frame of the 360-frame match-up loop
(`$C574AB`) by `$C5B31B`. Each step is compared with the whole pad word (`$1602` + 2 per player). A step that doesn't
match is skipped rather than resetting the code, so extra presses in between don't matter, but held buttons do: "hold
Left, Y" means the pad reads exactly Left + Y. A finished code sets its bit in `$B9CE` + 2 per player, and the match-up
then applies them (`$C5779F`):

| Bit | Inputs | Sets | Published |
|-----|--------|------|-----------|
| 0 | Left, Left, B, R | `$7E4C` (no tag arrows) | yes |
| 1 | L, R, Select, Start, Up, Down, A, B, Y, X | `$16AE` = 3 (jungle court) | yes |
| 2 | hold Right, B, B | `$7E50` (no CPU assistance) | yes |
| 3 | hold Right, R, Y, B | `$7E52` | **no** |
| 4 | B, B, then hold B through a counter-clockwise turn from Up | `$7E52`, `$7E4E`, `$16AE` = 1 | **no** |
| 5 | hold Left, Y, Y | `$16AE` = 1 (rooftop court) | yes |
| 6 | Up, Right, Down, Left, Start, A, B, Y, X, Select | nine cheats | yes, as four |
| 7 | hold Down, B, A, X, Y, then let go of Y | `$16AE` = 2 (city court) | yes, without the last step |
| 8 | Start, Y, Right, A, B, Up, Start, Up, Down, Down, Start, L, A, Down, Down | all eight bits | yes (cheat ending) |

- `$7E52` starts a task at tip-off that flashes the ball white three times in the referee's hands (screenshots
  compared frame by frame in BizHawk); nothing else differed. Bit 3 has the shape of the arcade's ABA ball code.
- `$7E4E` is a per-player bit that zeroes four of the player's movement values (`$C47E9E`), like the arcade's no drift.
  Bit 4 is the 16-bit version of the arcade's four-at-once code, turning the other way.
- Bit 6 sets the flags of nine number codes: goaltending, max block, max steal, max power, max speed, hyper speed,
  stealth turbo, unlimited turbo and fast passing.
- After the match-up the game ORs every player's bits together and plays the cheat ending (`JML $C800E9`) if all eight
  are set (`$C5753E`). The long code is one way to get there; the other eight codes, split across any players, are another.
  All eight entered on one pad in a single match-up (three frames per step) in Mesen 2 reached `$C800E9`.
- Bits 1 and 6 press A, B and Y once each, which also leaves the numbers on 1-1-1, tournament mode. Tournament mode
  clears the number-code flags (`$C311C5`) before the joystick bits are applied, so it cancels number codes typed earlier
  but not these.

All nine were entered in Mesen 2 and checked by `$B9CE` and the flags above; the cheat ending code reached
`$C800E9`. The window is short: the loop runs 360 frames, starting about two and a half seconds after Start.

### Genesis joystick codes

Six detectors, listed at `$12B10`, each a chain of states that waits for a pad state and then for the buttons to be
let go. In pad bits, A is Turbo, B is Shoot and C is Pass:

| Inputs | Sets | Notes |
|--------|------|-------|
| hold Left, B, B | `$FF297D` | rooftop (street) court, published as "outdoor court" |
| B, A, Right, Right, A, C, Up, Down, A | `$FF297D` and `$FF297F` | Hawaii court |
| Left, Left, C, A | `$FF1194` | no tag arrows: **never read**, the arrows still show |
| Down, Down, B, A | `$FF1196` | no drift (read at `$25DAA`) |
| hold Right, C, C | `$FF1198` | no CPU assistance (read at `$25836`) |
| hold Right, A, B, C | `$FF119A` | ABA ball, published as "A, B six times, and C" |

All six entered in BizHawk and checked by their flags; both courts and the ABA ball were seen in play. The published
Genesis big heads, huge heads, shot percentage and "hold Left, A three times" rooftop codes have no detector. Only two
courts exist (the ROM's feature list says "ROOFTOP COURT", "HAWAII COURT").

Tournament mode (1-1-1, `$FF11A0`) makes the tip-off code (`$1C1A8`) clear every joystick flag. The numbers are checked
after every press, so a code's A, B and C presses (or presses after it) can pass through 1-1-1 and cancel it: our first
no-arrows test did exactly that.

### Genesis options screen

The options screen (`$B91C`; Right on the main menu, then A) starts three more sequence checkers (`$BB6C`, comparing
each new press with a list):

| Inputs | Effect |
|--------|--------|
| C, A, Right, Left, Right, Up, Left, A, Right | plays the credits roll ("FUNCOM HOME VERSION", "MIDWAY COIN OP VERSION", "ORIGINAL MUSIC", "ACTORS", ...), the same one attract mode picks half the time after its demo game (`$ABA0`) |
| B, A, Right, Right, A, C, Up, Down, A | sets `$FF297F`, the Hawaii half of the court setting, which is only read when the court flag `$FF297D` is set; the match-up court codes set or clear it anyway, so it does nothing |
| A, B, A, C, Up, Start | sets `$FF0C52`, which nothing reads (checked in code and with a read watch through attract mode). The Start also leaves the screen |

All three entered in BizHawk.

### Other Genesis leftovers

- Thirteen built-in player records at `$36374` (MARTIN, CARLOS, CARLTN, EUGENE, DIVITA, JAPPLE, TURMEL, then Funcom's
  NILS, KRILLE, GLENN, TOMMY, TORE, COLIN, all PIN 0000). They seed the attract-mode record screens (`$3664A` walks them
  before the saved records); the record lookup at name entry doesn't use them, and typing TURMEL 0000 changed nothing.
- "SVEN-BERTIL", "EVERT", "KROKODILEN" and "CARL-HENRIK" sit after "PRESS  START" at `$5A30` with nothing pointing at them.

### European versions

The European Super Nintendo and Genesis cartridges have the same name tables, match-up numbers, joystick sequences,
options-screen sequences and preset records as the US ones, only moved (Super Nintendo number table `0x577C2`, sequences
`0x5B429`; Genesis numbers `$12A34`, presets `$37838`). The European N64 differs from the US in its `MDOC` PIN (above).

## The logo

The arcade only draws its logo as part of the full-screen title picture (ten 8-bit tiles of one composited image,
`05C8D817h` ... `05D40857h` in the image ROMs), and the N64 and PlayStation title screens are the same flattened
picture. The Genesis title puts the logo on its own planes (A and the window) over the background on plane B, so
`tools/img/logo_hangtime.png` is the Genesis logo, cut by taking the frame with plane B switched off and keeping the
pixels that don't change when it's switched back on.

## Not covered

- Unused arcade graphics: 686 image-header-shaped records in the program have no direct pointer, but most are
  animation frames reached through frame tables, and showing them needs a decoder for the board's graphics format.
- Arcade code coverage: MAME's Lua can't see every instruction fetch at a usable speed, so there's no list of routines
  that never run.

## Tests

- `tools/tests/hangtime_names.lua` (MAME): writes each table entry into the name check, shoots team select and the
  tip-off scoreboard.
- `tools/tests/hangtime_matchup.lua` (MAME): enters each match-up code and logs the 13 flag words.
- `tools/tests/genesis_hangtime_joystick.lua` (BizHawk): enters the six Genesis joystick codes and logs their flags at
  the match-up and in play.
