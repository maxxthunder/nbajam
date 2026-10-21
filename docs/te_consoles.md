# Tournament Edition on Super Nintendo, Genesis, 32X, Saturn, PlayStation, PC, Jaguar, Game Boy and Game Gear: secret players

All three home versions of NBA Jam TE check the initials against one 40-entry table:

| Version | Table | Entry size |
|---------|-------|------------|
| Super Nintendo | `$29:8A7F` (checked at `$8A:DA96`) | 6 bytes |
| Genesis | `$2DC1EA` (checked at `$2A682C`) | 6 bytes |
| 32X | `$05BDD6` (ROM offset) | 6 bytes |

An entry is three letters, the character ID and a 16-bit button word. Each letter is its grid index (A = 0, blank = 26)
with bit 5 set if Start must be held on it. The button word has 3 bits per letter, first letter lowest: 1, 2 or 4 for
the button pressed with Start (Genesis A, B, C; Super Nintendo A, B, Y). The game compares all four values, so a letter
marked plain must be entered without Start.

The 32X stores the button word in the other order, so its codes run the other way from the Genesis ones. TWG is
Start + B, plain, Start + A on Genesis and Super Nintendo, but Start + A, plain, Start + B on the 32X. RQ87's list is
correct for the 32X.

## What's in the table

- **38 characters work on Genesis and Super Nintendo**, plus **Stud Muffin** (`G_F`, ID `$9A`), which also needs a
  flag set during the power-on copyright screens: hold Start + C + Left on Genesis (`$FF2296`, set at `$2AC78A`), or
  Left + L + R on Super Nintendo (`$1E28`, set at `$89:9432`). All 39 checked: Genesis in BizHawk, Super Nintendo in
  Mesen 2.
- **The 32X has 36.** Scooter Pie (`HTP`), Kid Silk (`KSK`), Stud Muffin and Steven Tyler have their letters set to 28,
  which the grid can't enter. Snake is `SNK` there instead of `GOF`. Checked in BizHawk.
- **Steven Tyler** (ID `$7A`, between Prince Charles and Chow-Chow) is cut from all three. His initials are letter
  values the grid doesn't have (Genesis 31/27/27, Super Nintendo 27/27/27 where 27 is the delete arrow). Forcing the ID
  into the player slot on Genesis shows the name "TYLER" with a blank portrait.
- On Super Nintendo, press Start before the button: when Start and B or Y go down on the same frame, the Start flag
  isn't recorded and the code fails (seen in Mesen 2).

Published lists checked: the cyberly.org Genesis list matches the table for all 38 it gives. The almarsguides
Super Nintendo list gives Weasel (`RAY`) as Start + Y on the Y; the table wants a plain press there, and Start + Y fails
(checked).

The Genesis and 32X ROMs also hold eight default record-keeper initials just before the table
(`CER SNK CLD MC_ JAF APF EMK DAN`). They're copied into the save records with the secret slots and aren't unlocks.

## Other button codes

Every read of the pad variables was followed: Super Nintendo `$08`-`$0E` (held) and `$14D7`-`$14DD` (new presses),
filled at `$8A:AE73`; Genesis `$FF0288`-`$FF028E` (held) and `$FF0292`-`$FF0298` / `$FF1116`-`$FF111C` (new presses).
Much of the Super Nintendo menu code isn't reached by the disassembler, so the raw ROM was also scanned for every load
of those variables followed by a button test, and for every "table entry against the new presses, then step an index"
loop. Apart from the initials screen and Stud Muffin's flag, that leaves:

- **All-Star record.** On the title menu (Head to Head, Team Game, Practice, Options), press Y (Genesis C), Up, Down,
  B, Left, A, Right, Down on any pad. Super Nintendo checks it at `$8A:8837` against `$96:FC3A` and sets `$16FF`;
  Genesis at `$28C388` against `$28DB92` and sets `$FF227A`. A record then kept as **JAM** is created 27-0 with every
  team beaten, so ALL-STARS replaces ROOKIES on team select; **END** is created 26-0, last played Chicago, one team
  short (`$8A:DB75`, `$2A69E0`). Checked in Mesen 2 and BizHawk, ALL-STARS seen on both. The published Genesis
  list has the JAM code; END is on no list we found.
- **Quit to title (Super Nintendo).** While paused (Start held), L + R on any pad jumps to the reset entry (`$80:8AC9`).
  Checked in Mesen 2 mid-game.
- **Sound test (Genesis, unused).** `$28AE4A` is a loop where Left/Right pick a sound number, B plays it and Start
  leaves. Nothing in the ROM calls it.

The other versions were checked for the same thing by scanning their code for 8-entry button tables shaped like these
sequences, and for preset records:

- **32X.** It runs the Genesis 68000 code with the same pad variables, but its title-menu sequence is different:
  C, Up, Right, Down, Left, A, Right, Down (`$29F70`, table at `$8AB316`, sets `$FF227C`). The initials it then
  rewards are **FIN** (27-0, ALL-STARS replaces ROOKIES with an "EXPANDED ROSTER" note) and **PRE** (26-0, last played
  Chicago), at `$37AEE`. Its sound test sits unused at `$28826`. Checked in BizHawk; on no list we found.
- **PlayStation and Saturn.** No title-menu sequence. Instead a new save is filled with preset records
  (PlayStation `SLUS_000.02` file offset `0x1550`, Saturn `0` offset `0x8B6A`): **END** and **FIN**, both dated
  January 1, then CHR, DAZ, TOM and ZIG dated 99/99, which the date grid can't enter. Keeping a record as FIN, January 1
  opens a 27-9 record, rank 1st ("You have defeated all 27 NBA teams!"), which is the published "champion" code; END,
  January 1 opens 26-9, rank 2nd, with only Houston left. No buttons need to be held. Checked in BizHawk on both.
  Sega Retro's Saturn page lists both; we found END on no PlayStation list.
- **PC, Jaguar, Game Boy, Game Gear.** No sequence tables and no preset records found. The two handhelds do have a
  quit from pause, read from the code only: on Game Boy, Select pauses and A + B while paused sets game state 10
  (`$13E28`), which waits and restarts at the title; on Game Gear, 1 + 2 + Start pauses and 1 + 2 while paused sets
  state `$0A` (`$29966`).

## Match-up codes

Every version keeps its Tonight's Match-Up codes as a table of button sequences, so the game holds the complete list.

**Super Nintendo, Genesis and 32X.** Each new press goes into a per-player history (SNES `$7E2258`, Genesis
`$FF217E`, `$20` bytes per player; one byte per press: Up `$10`/`$01`, Down `$08`/`$02`, Left, Right, A, B; X, Y
and C aren't recorded), and when the screen ends the game searches it for each sequence in its table
(SNES `$8A:FA37`, table `$4C:EFDA`; Genesis `$2ACF5A`, table `$2AD01E`; 32X `$3D5BE`, table `$8BD67C`). An entry is
the sequence, an end byte, then the address of the flag it sets. The flags are copied to the players when the game
starts (Genesis `$266762`, 32X `$12D82`; SNES packs them into a mask at `$07EE`, around `$82:F9D8`).

- Super Nintendo and Genesis share the same 17 sequences. The cyberly.org Genesis list has 16 of them right. One
  Super Nintendo list has three wrong: three pointers without the last Up, teleport pass with an extra Left, and
  rainbow arc shots without the first Up. None of those versions sets anything (checked in Mesen 2).
- **The 17th code is unused:** Down, Up, Down, Up, Down, Up, Left, Left, B, B. The game recognises it and sets its
  flag (Genesis `$FF2312`, SNES `$0B82`, both checked), but never applies it. The Genesis and 32X copy loops step over
  it (`adda.w #8, a0`), and on Super Nintendo it becomes mask bit `$4000`, which nothing tests. Probably a cut
  power-up. It isn't on any list we found.
- **The 32X has its own 18 sequences**, for the same effects in the same order plus baby mode (a global flag,
  `$FF4610`). All 18 checked in BizHawk: each sets its flag. RQ87's list has six of them, and gives turbo without
  its second Down, which does nothing (checked); the other twelve, including the unused code, weren't on any 32X
  list we found. Lists that give the Genesis codes for the 32X are wrong: those sequences aren't in its table.
- **PlayStation** (`OVERLAY.BIN` `0x2AD88`, 19 sequences, checked at `$801D5CF0`) and **Saturn** (`0` `0x578A4`, the
  same 19 in the same order, checked at `$0604A09C`) hold nothing new. Each searches the player's history (PlayStation
  `$801F3564`, Saturn `$06073E38`, 30 presses per player); sequences 1-14 set bits in the player's mask (`$80084308` /
  `$06070B94`) and the other five set global bytes. All 19 checked on both in BizHawk. The PlayStation's match the Cheat Code Central list exactly, except
  that mammoth heads is stored as four rounds of Circle, X, Square, Triangle, not five. The Saturn's two that differ
  from the PlayStation's (turbo and push) were published by 32bits. Sega Retro's Saturn page has 17 of the 19, all
  matching (its baby mode and head codes are longer than needed, which still works); it lacks Y, Y, Y, B, Down, Down, Up, Left and
  Down, Right, C, Y, C, Right, Down.

## Jaguar

The Jaguar version (by High Voltage) has its own 40-entry table at `$860CE0` (file offset `0x60CE0`; the count, 40,
is the long at `$860CDC`). An entry is 8 bytes: three ASCII initials (`[` is the blank), three button bytes, then a word
with the character ID. The check at `$807F00` compares the initials and button bytes as entered and stores the ID at
`$5EDA` (player 1).

Any of A, B or C picks a letter. The button byte comes from `$8080FA`: `$FF` for a normal press, or, while **Option** is
held, the joypad bit number of the button pressed (A = `$1D`, B = `$19`, C = `$0D`). So each letter is either "as usual"
or "hold Option and press A/B/C".

- **All 40 work**, with no power-on step. Checked in BizHawk (Virtual Jaguar core): each code gives "SECRET PLAYER" and
  the expected ID. That includes Stud Muffin's and Steven Tyler's slots.
- **16 slots hold different people.** Six High Voltage staff take the Midway staff slots (`RBG`, `ALP`, `KJG`, `DJD`,
  `K_M`, `HAM` instead of `SL_`, `JMC`, `KSK`, `TWG`, `CK_`, `HTP`). Phil Gelber (`FIL`), L. Pacey (`PAY`), Correll (`CRL`),
  Faran Thomason (`FAR`), Kristine Chambers (`KC_`, Tyler's slot), Leonard Tramiel (`LAT`), Theinvanich (`THE`),
  Shawn Rosen (`SR_`), Wanat (`WAN`, Stud Muffin's slot), Gunter (`GUN`) and Seth Rosenfield (`SET`) replace the others.
- The published Jaguar list ([consoledatabase.com](https://www.consoledatabase.com/cheats/atarijaguar/nbajamtournamentedition/))
  matches the table except **Mike D**: it gives as usual, B, A, but the table wants Option + C on M and on D (checked).

**Match-up codes.** The Jaguar has its own 24 sequences. Each player's presses go into a 256-byte history
(`$705D` + `$100` × player), and when the screen ends `$80A24C` searches it for each sequence in the pointer table
at `$81C36C` (file offset `0x1C36C`). A sequence is the joypad bit numbers of its presses (Up `$14`, Down `$15`,
Left `$16`, Right `$17`, A `$1D`, B `$19`, C `$0D`), with bit 7 set on the last one. Sequence *n* sets bit *n* of the
player's mask (`$6922` + 4 × player); `$80A1D8` ORs the four into `$6932` and turns the global ones on, and `$80B432`
copies the rest into each player. `$80B24E` lists the active ones at tip-off under "CHEATS ACTIVATED".

The consoledatabase.com list linked above has all 24, each with the same inputs as the table, so there's nothing
new here. In table order: CD-ROM mode, baby mode, shot percentage, quick hands, goaltending, on fire, turbo,
offense, three pointers, dunks, push, push (both fall), push (other falls), teleport pass, high shots, speed,
slippery court, big heads, small heads, small ball, small players, all players on fire, Doom mode, strength (max
power). All 24 checked in BizHawk: each sets its bit. The screen is short, so a long code has to be entered as soon
as it comes up.

## Game Boy

The Game Boy version (by Torus Games) has 14 secret characters. The initials are plain ASCII at `$177C` (bank 0), 3
bytes each, ending in `$FF`: `CIC HC_ GOR HVY JAZ WIL SOX PHI BRD MKD ADR MCA RPR CRN` (the blank is a space). The
check at `$470C` (bank 1) finds the initials, then compares the button used on each letter, saved as `$FFE0 & $0B` at
`$D5CA`, with 3 bytes of a 7-byte entry at `$40C6` (bank 1): `$01` = A, `$02` = B, `$08` = Start. A, B and Start all
pick a letter, so each code is a button per letter. A match stores the entry number + 1 in the player's slot (`$D5CA`).

All 14 checked in BizHawk (Gambatte): each sets the slot, and team select shows the character (for example "B CLINTON").
The same initials with the wrong buttons give a normal player. They match the published list
([chaptercheats.com](https://www.chaptercheats.com/cheats/gameboy/578/nba-jam-tournament-edition-cheat-codes)) exactly.
`RPR` is RP Rodent, the Torus Games mascot from the boot screen.

## Saturn

The Saturn version (Iguana) checks initials and a birthday, like the arcade TE. I read the table from high work RAM
once the game has loaded (the disc image wasn't extracted), at `$060667EC`: 53 entries of 24 bytes,
six big-endian longs each: a pointer to the player's record (name, stats), the three initials as ASCII, the day and
the month. The pointer gives each entry's name (`KITZROW`, `FOX`, `MAGIC HAIR`, ...).

All 53 checked in BizHawk (Saturnus, US BIOS `mpr-17933`): each shows "SECRET PLAYER" and then the character at team
select. They match the GameFAQs list except **Mark Turmell**: GameFAQs says `TUR` January 3, which shows "NO RECORD";
the table has January 31, which works. GameFAQs also says to hold L + R while entering, and that's right: each letter is stored with the L and R bits of
the pad (`$06043788`), and the secret check (`$0603F408`) compares it with the table letter OR'd with `$00880000`, so
every letter must be picked with L + R held. `TUR` and `FOX` without them show NO RECORD (checked).

The lineup is bigger than the cartridge versions. Besides the usual staff, mascots and celebrities it has twelve
more entries named only by their record (`CAT`, `BAR`, `HOG`, `SAT`, `BAA`, `TOM`, `LIZ`, `STH`, `SAW`, `THI`, `WAN`,
`GUN`), the announcer Tim Kitzrow (`KIT`), Fox (`FOX`), and the four members of Sonic Youth (`GOR`, `REN`, `SHY`, `MOE`).

### Saturn program: other input checks

The main program (file `0`, loaded at `$06010000`) was disassembled to look for codes beyond the tables:

- **Pad.** The SMPC data is parsed into `$060724B4` (one word per player, active high: Right `8000`, Left `4000`,
  Down `2000`, Up `1000`, Start `0800`, A `0400`, C `0200`, B `0100`, R `0080`, X `0040`, Y `0020`, Z `0010`,
  L `0008`). `$06018894` turns it into new presses and held buttons for each player, raw at `$0606C0B4` and remapped
  to the button config at `$0606A00C`.
- **Sequences.** The press-history matcher (`$0604A348`) has a single caller, the match-up screen (`$0604A0A4`),
  which checks exactly the 19 sequences in the table. There are no other sequence codes.
- **Combinations.** Nothing compares a pad word with an exact multi-button value. The L + R bits are stored with
  each initial (`$06043788`) for the secret check, and R and Z presses are counted per team in one game phase
  (`$06022376`), which looks like jump-ball tapping.
- **Tournament Mode** (`$0606B564`, saved with the options) switches off both secret players and match-up codes.

Not covered: functions that read the pad through a computed pointer were only skimmed, and BizHawk's Saturn core
can't log which code reads memory, so they weren't traced live.

## PlayStation

The PlayStation version (Iguana) uses the same table format as the Saturn, little-endian. It's in `OVERLAY.BIN` on the
disc at offset `0x2F324` (the file loads at `$801BF000`, so the table is at `$801EE324`): 53 entries of a record
pointer, three ASCII initials, day and month. I read it straight from the disc image with a small CHD reader (the
data track is `cdlz`/`cdzl` hunks; the audio tracks are FLAC and were skipped).

It's the Saturn list without Tim Kitzrow (`KIT`) and Fox (`FOX`), plus `JAX` March 1 (record "JAX") and `ROB`
February 23 (record "GRAY"). Turmell is January 31 here too. Both extras are on a published list
([Cheat Code Central](https://www.cheatcc.com/?p=85106)).

All 53 checked in BizHawk (US BIOS `scph5501`): each shows "SECRET PLAYER" and then the character at team select.
Unlike the Saturn, **L1 + R1 must be held** on the letter and date presses: without them `TUR` January 31 shows
"NO RECORD".

## PC (MS-DOS)

The PC version (Iguana, 1995) splits into a front end, `)-----(.EXE`, and the game, `(O)_(-).EXE`, both DOS/4GW
(LE format) programs started by `JAM.COM`. The table is in the front end at file offset `0x8C6D6` (linear `$8E8D6`):
53 entries of 8 bytes: character ID, three ASCII initials (space for a blank), day, month and two zero bytes. It's the
PlayStation list with `SEM` October 23 ("SEMMENS") in place of `ROB` (Gray), and `JF_` instead of `JAS` for Jason
Falcus (same November 16 birthday).

The check (`$1C84E`, one copy per player) also compares five bytes per entry from a second table `0x1C0` bytes before
it. They're keyboard scan codes for the F-keys (`$3B` = F1 ... `$44` = F10). The keyboard handler (`$126C5`) keeps the
last F-key pressed at `$9ACF2`, and each pick on the initials and birthday screens (three letters, month, day) stores
it (`$1CDC4`). So before each of the five picks you press one F-key. The table cycles through four sequences:
F1-F5, F6-F10, F10-F6 and F5-F1.

The published PC list has 51 of the 53 with their F-keys. Two aren't on it: `AIR` January 21 (Air Dog) and `BAA` July
12 (McHugh), both F6-F10. They're on the PlayStation and Saturn lists with the same initials and birthdays, so they
aren't marked new. One is wrong: it gives Chris Kirby (`CHR` December 18) as F6-F10, but the table has
F10-F6. Checked: F6-F10 gives a normal player, F10-F6 gives Kirby.

**Match-up codes.** The match-up screen is in the front end, which passes the results to the game in
`CONTROL.DAT`. While its 240-frame countdown (`$9ACBC`) runs, `$1B15D` takes each player's input word (`$92099` +
2 × player: Up `1`, Down `2`, Left `4`, Right `8`, Turbo `10`, Shoot `20`, Pass `40`) on every new press from
nothing held, and steps through 19 sequences at `$9958C`. Each is halfwords ending in `FFFF`, then a flag dword
that is ORed into the player's mask (`$9B402` + 4 × player). A wrong press restarts that sequence. At the end
(`$1B301`) the bits `3E00` are shared with all four players. The game reads the masks at `$6DDC2` (copied to
`$6BFA4`).

The per-player bits are the PlayStation's (`1`-`100`, `8000000`-`80000000` in the same order), so the effects follow
from its list. All 19 checked in DOSBox-X: each sets its flag in the front end.

| Effect | Keys | Flag | GG Mania |
|--------|------|------|----------|
| Quick hands | Down, Turbo, Down, Turbo, Down, Turbo | `1` | yes |
| Maximum power | Left, Turbo, Right, Turbo, Up, Turbo | `2` | yes |
| Goaltending | Turbo, Turbo, Up, Turbo, Turbo | `4` | yes |
| On fire | Shoot, Shoot, Down, Shoot, Shoot | `8` | yes |
| Turbo | Down, Down, Down, Turbo, Turbo, Turbo | `10` | yes |
| Offense | Turbo, Turbo, Turbo, Shoot, Shoot, Shoot | `20` | no |
| Three pointers | Shoot, Shoot, Shoot, Up, Up, Up | `40` | yes |
| Dunks | Left, Right, Up, Down, Left, Right | `80` | yes |
| Push | Left, Left, Right, Right, Up, Up | `100` | no |
| Push, both fall | Turbo, Left, Turbo, Turbo, Turbo | `8000000` | no |
| Push, teammate falls | Shoot, Up, Shoot, Shoot, Shoot | `10000000` | no |
| Teleport pass | Turbo, Down, Turbo, Turbo, Turbo | `20000000` | no |
| Rainbow arc shots | Shoot, Right, Shoot, Shoot, Shoot | `40000000` | no |
| Super speed | Turbo, Turbo, Shoot, Shoot, Turbo, Turbo | `80000000` | no |
| Shot percentage | Up, Shoot, Up, Shoot, Up, Shoot | `200` (all) | yes |
| Baby mode | Turbo, Shoot, Turbo, Shoot, Turbo, Shoot | `1400` (all) | yes |
| Big body | Up, Up, Up, Turbo, Shoot, all four arrows at once | `800` (all) | wrong |
| Big heads | Down, Down, Down, Shoot, Shoot, Shoot | `1000` (all) | yes |
| Huge heads | Up, Down, Up, Down, Turbo, Shoot | `2000` (all) | no |

- **Three codes do nothing in the game.** Nothing in `(O)_(-).EXE` tests `200` (shot percentage) or `800` (big
  body). Super speed is tested at `$176F0` as `(mask AND 80000000h) = 1`, which is never true. Read from the code.
- **Big body** really ends with Up, Down, Left and Right pressed on the same frame (`000F`): possible on the
  keyboard, not on a joystick. GG Mania's plain Up does nothing (checked).
- **Heads.** Normal heads are drawn at 0.625 × (`$2C811`); `1000` (big) skips the scaling, `2000` (huge) uses
  1.375 ×. `400` halves the body sizes (`$2C4CC`), so baby mode is small bodies with big heads.
- GG Mania's list ([ggmania.com](https://www.ggmania.com/gimmecheat.php?cheat=5447)) has 11 of the 19; the other
  eight weren't on any PC list we found.

Player 1's keys come from `JOYSTICK.CAL`: the arrow keys, and Right Alt, Right Ctrl and Right Shift as the buttons.

All 53 checked in DOSBox-X 2026.10.01: the five stored keys and the character ID match the table, and team select shows
each character. The test drove the game from outside: DOSBox-X's `AUTOTYPE` for the title menus, then key presses and
the F-key byte written into the front end's memory (found by searching the DOSBox-X process for the table).

## Game Gear

The Game Gear version (Iguana) works like the Game Boy one. The initials are plain ASCII at file offset `0x7B433`:
`CIC HC_ GOR HVY JAZ WIL SOX PHI BRD MKD ADR MCA HGO CRN`, with Hugo (`HGO`) where the Game Boy has RP Rodent. The check
(file `0x7CD02`) then compares the button used on each letter with 3 bytes of a 7-byte entry at file offset `0x7C000`:
`$10` = button 1, `$20` = button 2, `$40` = Start. All 14 checked in BizHawk, and they match the published list
([SMS Power](https://www.smspower.org/Cheats/NBAJamTE-GG)).

## Portraits on the codes page

- **Super Nintendo** (original and TE): Mesen 2 with only BG1 shown (BG2 is the panel, the team logo is BG3 on TE and
  sprites on the original), cropped at x 8-56, y 112-168.
- **Genesis** (original and TE): BizHawk, each character on four teams, with and without plane B (the panel). The logo
  is sprites drawn behind the face, so a pixel is kept only if it's the same in all eight shots. Cropped at x 16-80,
  y 112-168.
- **Sega CD**: same as the Genesis (four teams, with and without plane B; the logo is on plane A here, beside the
  face), cropped at x 16-80, y 112-168.
- **PC**: DOSBox-X screenshots of each character on five teams, halved to 320x240. A pixel is kept if it's the same
  on all five and isn't a teal panel colour connected to the edge of the box. Cropped at x 16-80, y 112-168.
- **Arcade** (original and TE, for comparison): MAME 0.282. Each portrait is one blitter command (X `0x47`, Y `0x82`-`0x85`
  in the back buffer, command `0x8002`). A Lua write tap on the DMA registers clears that command's draw bits for a few
  frames, so the screen is drawn with the panel and logo but no face. The face is every pixel that differs from the
  normal frame, cropped at x 15-88, y 129-193.
- **Jaguar**: BizHawk, each character on six teams. Same method as the 32X (the panel is teal too). The player-1 marker
  drawn over the top of the slot is removed by position, cropped at x 20-84, y 116-172.
- **Game Boy** (original and TE): BizHawk with sprites turned off (LCDC bit 1 cleared each frame), kept as the full
  32x32 picture. The background is the same white as the faces' highlights, so it can't be cut out. Cropped at x 16-48,
  y 72-104 (TE) and x 24-56, y 72-104 with the frame (original).
- **Game Gear** (original and TE): BizHawk, with VRAM and CRAM dumped at team select and the screen redrawn from them
  (tile map at `$3800`, 4-bit tiles, BizHawk's CRAM as big-endian `0BGR` words). The redraw matches the screenshot in
  the portrait rows. A pixel is portrait if its tile uses the portrait's palette (sprite palette on the original,
  palette 0 on TE) and its colour index isn't 0. That keeps dark art: TE's palette has a second black (index 1) that
  Hugo uses a lot. Cropped at x 32-64, y 72-104 (original) and x 24-56, y 80-112 (TE).
- **Saturn**: BizHawk. The whole team-select foreground is drawn by VDP1, and its framebuffer stores colour codes
  rather than colours. Each portrait has its own colour bank (bank 3 for player 1; the logo is bank 1), and the panel is
  on VDP2, so the portrait is every framebuffer pixel in bank 3. Colours come from VDP2 colour RAM, and match the
  screenshot exactly (framebuffer offset +5, +8). Cropped at x 15-79, y 118-174 in framebuffer coordinates.
- **PlayStation**: BizHawk, GPU RAM dumped at team select. The player-1 portrait is an 8-bit texture at VRAM bytes
  1792-1856, rows 256-312, with its CLUT at (256, 496). Index 0 is transparent. The texture lines up with the face on
  the framebuffer with no colour conflicts, and its colours match that CLUT entry for entry.
- **32X**: BizHawk, each character on 14 team views (3 logos). A pixel is kept if it's the same on every team and isn't
  the panel's teal, cropped at x 16-78, y 112-168.
