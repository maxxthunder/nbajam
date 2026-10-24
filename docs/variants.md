# Betas, prototypes and regional versions

Each was compared with the release it comes from: the secret-character tables (found by searching for the release
table's bytes, or for a table of the same shape), the text in the ROM or on the disc, and the file lists on CDs.

## NBA Jam, Super Nintendo

- **NBA Jam (Japan) (En) (Beta)** has an early secret table of 11 entries at file offset `0x153293` (`$2AB293`),
  checked at `$8AD294` by the same code as the release (initials at `$16F2`/`$16FA`/`$1702`, the release's
  `$16CC`/`$16D4`/`$16DC`, so most RAM is shifted by `$26`). Four of them are dinosaurs, the same four the Sega CD
  version has:

  | Initials | ID | Character |
  |----------|----|-----------|
  | `MJT` | `$36` | Mark Turmell |
  | `SL_` | `$37` | staff member |
  | `TWG` | `$38` | staff member |
  | `JMC` | `$39` | staff member |
  | `SAL` | `$3A` | Sal DiVita |
  | `JWH` | `$3B` | staff member |
  | `RJR` | `$3C` | Jamie Rivett |
  | `DIL` | `$3D` | dinosaur (a dilophosaurus) |
  | `RAP` | `$3E` | dinosaur (a raptor) |
  | `REX` | `$3F` | dinosaur (a T. rex) |
  | `TRI` | `$40` | dinosaur (a triceratops) |

  ![The 11 secret characters of the Japanese beta](images/snes_japan_beta_secrets.png)

  The hold rule is simpler than the release's: on the third initial, hold Start + X + L (`AND #$1060`) and press A,
  whatever the first initial is (the release picks the buttons by first initial, table `$2AF84C`). All 11 typed in
  Mesen 2 that way; each comes up at team select.
- **NBA Jam (USA) (Beta 2)** is the original release except for two bytes (file offset `0x7800`-`0x7801`).
- **NBA Jam XXXX (USA) (Proto)** has the release's secret table and Rev 1's text (its rebuilt multitap library); 120,549
  bytes differ from Rev 1. It wasn't gone through further.

## NBA Jam, Genesis and Game Gear

- **NBA Jam (USA, Europe) (Beta) (April, 1993)** has no secret-character table at all, and it has a "PASSWORD:"
  screen, which the release (it saves to EEPROM) doesn't.
- **Rev 1** adds a region lock (see [secrets.md](secrets.md)).
- **NBA Jam (Japan)** on Game Gear is Rev 1 with a Japanese header and two players' ratings changed (file offset
  `0x57CE7`); text and codes are the same.

## Tournament Edition, Super Nintendo

- **Europe** and **Japan (En)** have the US secret table unchanged; the text differs only in the header and the
  Nintendo licence line.
- **USA (Beta)** has no secret table in either format the releases use. Its name list (`0x266E0D`) still has the
  staff from the release and 13 more who were later dropped (John Hey, Petro, John Newcomer, Oursler, Neil Hislop,
  Reeson Ivatts, Darren Falcus, Angela Atkinson, Ian McBurney, Ian Dunlop, Rob Gray, Gary Vine and Darren Hodgson),
  then nine placeholders, "ACCLAIM BLOKE 1" to "ACCLAIM BLOKE 9". In the release those slots hold Acclaim's staff and
  the extra characters (Asif Chaudhri, Brett Gow, Dan Feinstein, Eric Samulski, Alex De Lucia, Jay Moon, Eric Kuby,
  Larry Bird, the mascots, Bill Clinton, Prince Charles and Steven Tyler). The beta also has "PASSWORD:" text.

## Tournament Edition, PlayStation (Japan)

- The movie names are fixed: the disc has `LC2HALF.STR` and `LC3.STR`, exactly what `MOVIE.EXE` asks for, so the US
  disc's mismatch (it has `LC2.STR` and `LC3HALF.STR`) was a mastering slip.
- Seven CD audio tracks instead of eight (no `END.RAW`).
- The secret table in `OVERLAY.BIN` and `HIDDEN.BIN` (portraits, cut characters included) are the same as the US.
- The preset records keep END and FIN (January 1) and the same stats, but the other placeholders become in-jokes:

  | US | Japan |
  |----|-------|
  | END, FIN, CHR, DAZ, TOM, ZIG, MJT, CSR, JAY, HAR: "CHRIS KIRBY" | END, FIN, SNK, ZIG, CSR, DUS, HAR: "STEVE SNAKE" |
  | GJV: "GARY  VINE" | CHR: "BUG CREATOR!", FP: "FAYE IS COOL", KML: "ENTERPRISES!", EW: "FAT OLD COW!" |

  As in the US version, only END and FIN can be entered (the others are dated 99/99).

## Tournament Edition, Saturn (Japan)

Same secret table as the US disc (file `0`), and `DUK.BIN` still leaves out `PH2DUK.AVI`. The text is the same.

## NBA Jam, Sega CD (Japan)

Same 21 files and the same 28-entry secret table, dinosaurs included. `FRONT.BIN` and `QUARTER.BIN` are each 11,032
bytes larger, and `MAIN.BIN` 16 bytes larger; their English text is unchanged.
