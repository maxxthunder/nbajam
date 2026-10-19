# Arcade NBA Jam: codes in the program ROM

Tournament Edition: see [arcade_te.md](arcade_te.md); for its home versions, [te_consoles.md](te_consoles.md).

What the arcade program (`nbajam`, MAME set) holds for secret characters and matchup codes. The program is
`uj12` (low byte) and `ug12` (high byte) interleaved, mapped at `FF800000` (TMS34010 bit addresses).
Disassembled with MAME 0.282's debugger. The tank game reward and the copyright message were checked in MAME
0.282 with a Lua script driving the inputs and reading RAM.

## Secret characters: nothing new

The initials and birthday table at `FF963740` (rev 3.01) has 13 entries, 5 words each: three letters
(A = 0, `_` = 26), month and day. Revisions 1.00, 2.00 and 3.01 have the same 13, and both prototypes
(1.01 and 2.00) have no table. All 13 are already published:

| Initials | Birthday | Initials | Birthday |
|----------|----------|----------|----------|
| `TWG` | Dec 7 | `GNP` | Oct 8 |
| `RJR` | Jan 17 | `JRN` | Jun 18 |
| `JMC` | Aug 5 | `SNO` | Jan 3 |
| `SAL` | Feb 1 | `HOW` | Jul 15 |
| `SL_` | Jun 24 | `WIL` | Jan 1 |
| `MJT` | Mar 22 | `TON` | Jul 3 |
| `JWH` | Sep 20 | | |

A second table at `FF97F300` (23 entries: MDP, DOZ, JCV, JMS, JFL, JRN, GET, TJC, GNP, JWH, CMM, MJT, RJR,
SAL, TWG, JMC, SL_, WMN, DIE, EJB, CRL, SAN, SNO) holds initials, birthdays, a win-loss record and a
teams-beaten mask. It looks like the default player records rather than unlocks.

## The tank game's reward (rev 3)

The secret tank game starts from the matchup screen (`FF83D190`) when P1 Down and all three buttons on both
sides are held (`IN0` mask `0x7072`), once per game (`@10E5260`). Your tank has 7 hits of health
(`@10F0E60`), and P1 Shoot fires.

- **If you lose**, it prints "YOU ARE DEAD!" (`FF8E8F30`) and the game goes on to the tip-off.
- **If you survive** until the tank game ends (about a minute), it prints **"ALL PLAYERS POWERUP!"**
  (`FF8E20B0`), sets all four players' power-up level to 8 (`@10F1250`–`@10F1280`) and sets `@10F1290`.

Checked in MAME: holding the code started the tank game. With no input the tank died and "YOU ARE DEAD!" came
up. With its health held at 7 every frame, the tank game ended after about a minute with "ALL PLAYERS
POWERUP!", and RAM showed `@10F1290` = 1 and all four power-up levels at 8.

The matchup-message code also shows "SHOT % DISPLAY ACTIVATED - (LEARNING MODE 2)" when `@10F1290` is set
(`FF908AF0`), but that message didn't appear in the test, and what the power-up level does in the game
hasn't been checked.

Rev 1.00 printed "YOU SURVIVED!" / "YOUR DEAD!" instead and has none of this, so the reward came in a later
revision. I couldn't find it documented.

## Hidden copyright message

If you also hold **P1 Right, P2 Right, P2 Shoot and P2 Turbo** (MAME's names; `IN0` mask `0x5808`) as the
tank game starts (`FF8E1F10`), the tank game is replaced by a screen that plays sound `$109` and shows four lines
(`FF8F51B0`). They're stored encrypted: each byte has a key subtracted, starting at 2 and growing by `$25`.

```
NBA-JAM
COPYRIGHT-1993
MIDWAY-MANUFACTURING-COMPANY
ALL-RIGHTS-RESERVED
```

Checked in MAME: the message stays up over the tank scenery for a few seconds, then the game goes on to the
tip-off with no reward. It's likely a hidden ownership mark against bootleg copies.

<p align="center">
  <img src="images/arcade_all_players_powerup.png" alt="ALL PLAYERS POWERUP! at the end of the tank game" width="400">
  <img src="images/arcade_copyright.png" alt="The hidden copyright message over the tank game" width="400">
</p>

## Hidden stats menu (rev 3.01)

Rev 3.01 has the same hidden operator menu as [Tournament Edition](arcade_te.md#secret-midway-menu), with
the same two codes:

1. In attract mode, after any button press, hold Up and all three buttons on both P1 and P2 (`IN0` `0x7171`),
   then switch to holding only both Downs (`0x0202`) until a 53-frame timer runs out (`FF9995B0`). The
   credits start (process `FF9D40A0`).
2. During the credits, press P1 Turbo ×2, P2 Shoot ×3, P2 Pass ×2, P1 Shoot, P1 Pass, P2 Turbo ×2
   (sequence at `FF9217E0`).

After the credits, it shows "NBA JAM REV 3.01 4/07/93" and the `JAM INFO` page (jams from the left, right
and center). Button presses step through an audit page, the score and team stats, and the records table,
then return to attract mode. Revisions 1.00 and 2.00 don't have it.

Checked in MAME: both codes entered as above brought up the menu and all its pages.

<p align="center">
  <img src="images/arcade_jam_info.png" alt="All five pages of the hidden menu in rev 3.01: JAM INFO, audits, score stats, team counts and the records table" width="806">
</p>
