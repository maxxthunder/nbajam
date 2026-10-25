# Changelog

Changes to the [password checker](https://maxxthunder.github.io/nbajam/) and [secret codes page](https://maxxthunder.github.io/nbajam/codes.html). The version is shown at the bottom of each page. **Codes page** and **Checker** are what visitors see; **Notes** are the [research notes](docs/); **README** is this repo's front page.

## 1.5.3 (2026-10-25)
- **Codes page:** the 32X Tournament Edition's four unused in-game heads, pictured in stand-in colours.
- **Codes page:** arcade NBA Hangtime's unused player animation, five portraits, ten name labels and four badges.
- **Notes:** the red Hangtime captions also stay undrawn in tournament mode; the rest of Hangtime's unreferenced images
  sorted, after taking out the ones Maximum Hangtime uses; the original Super Nintendo NBA Jam's packed tiles traced to
  the screen, with nothing unused found.
- **Repo:** a 32X TE head test.

## 1.5.2 (2026-10-25)
- **Codes page:** the Genesis Tournament Edition's 14 unused in-game heads, pictured; none is on a published list.
- **Codes page:** arcade NBA Hangtime's seven unused red rule captions and two shorter "WINNER STAYS ON FREE" notices.
- **Notes:** every packed block in the original Super Nintendo NBA Jam is used (the ending's trophy screen and the
  halftime dunk footage were the last two found); the red captions settled; MAME can't run the 32X version, so its
  crash screen stays unconfirmed.
- **Repo:** `tools/iguana_unpack.py` now unpacks blocks with an empty first byte of bits and finds all 24; a Genesis TE
  head test.

## 1.5.1 (2026-10-24)
- **Codes page:** the Super Nintendo Tournament Edition's 13 unused in-game heads, pictured; six aren't on any
  published list.
- **Notes:** where the Super Nintendo TE heads and their banks are; the 32X version's own SH-2 crash screen; the
  original Super Nintendo NBA Jam's packing scheme (its only table ads are NBA and JAM); unsettled red captions in
  arcade NBA Hangtime.
- **Repo:** `tools/iguana_unpack.py`, an unpacker for the original Super Nintendo NBA Jam's graphics.

## 1.5.0 (2026-10-24)
- **Codes page:** every game lists its versions in the same order (arcade, then Super Nintendo, Genesis, Sega CD, 32X,
  Saturn, PlayStation, N64, PC, Jaguar, Game Boy, Game Gear), and NBA Jam opens on arcade.
- **Codes page:** unused Tournament Edition name labels for Shaquille O'Neal and Derrick McKey, in no revision.
- **Codes page:** NBA Hangtime's unused 1996 Pistons, Timberwolves and Jazz logos (Maximum Hangtime uses them) and
  DCS Sound System logo.
- **Notes:** every arcade NBA Jam ad on the list can come up; the other home versions have no ad list to cut from; 13
  Super Nintendo TE heads belong to no player.
- **Repo:** `tools/arcade_gfx.py` decodes Tournament Edition and NBA Hangtime too; a Super Nintendo TE head test.

## 1.4.2 (2026-10-24)
- **Codes page:** the Super Nintendo Hangtime Jungle and City court screenshots, blank since 1.3.6, now show the courts.
- **Codes page:** 137 images re-packed losslessly, 0.5 MB smaller with the same pixels.

## 1.4.1 (2026-10-24)
- **Codes page:** "Winners don't use drugs" now matches a search typed with a plain apostrophe.
- **Notes:** the Super Nintendo skips a repeat ad pair only some of the time, not always; the arcade's unused pictures
  are six headers (the hoop is three pieces), and the header count is what the scan finds.

## 1.4.0 (2026-10-24)
- **Codes page:** the Super Nintendo Tournament Edition's five unused courtside ads (MK II, an Air Morris shoe ad,
  "Winners dont use drugs" and two Mortal Kombat ads), pictured.
- **Codes page:** unused arcade NBA Jam graphics: the NBA Jam Session logo and a front-on hoop, plus a gold trophy and
  a Chicago Bulls logo that no published list had.
- **Codes page:** notes no longer say how each code was tested; that's in the research notes.
- **Notes:** how the Super Nintendo picks its courtside ads, and the arcade image format.
- **Repo:** `tools/arcade_gfx.py`, an arcade image decoder, and a courtside ad test.

## 1.3.9 (2026-10-24)
- **Codes page:** the Hangtime match-up numbers tested on N64, PlayStation, Super Nintendo and Genesis (every one sets
  its flag; N64 and PlayStation show the arcade's captions, now pictured), and all ten PlayStation joystick codes.
- **Codes page:** a Super Nintendo Hangtime bug: entering no number gives your team goaltending and stealth turbo.
- **Codes page:** the arcade Tournament Edition's unused "Get that (beep) outta here" commentary, censored and
  uncensored, decoded from the sound ROM as playable clips; the PlayStation Tournament Edition's four unused portraits.
- **Notes:** the TE Genesis unused music couldn't be reproduced.

## 1.3.8 (2026-10-24)
- **Codes page:** checked against Dan Amrich's Hangtime list (bunnyears.net): every name and PIN matches. The Down
  press that locks the match-up numbers is on his list, so it's no longer marked ★ New. His spelling "ERHLICH" is a
  slip; both games show EHRLICH.
- **Repo:** the Genesis screenshot tests switch every graphics layer on, so BizHawk's saved settings can't blank one.

## 1.3.7 (2026-10-24)
- **Codes page:** the N64 Hangtime credits, listed elsewhere as unused, play in attract mode on its third loop.
- **Codes page:** the "Cut or unused" filter now includes the 32X's cut and unused players and the N64's M-DOC.
- **README:** the unused match-up code is filed under Tournament Edition, where it belongs.
- **Repo:** CI checks that both pages' scripts parse.

## 1.3.6 (2026-10-24)
- **Codes page:** 30 more screenshots: arcade Hangtime match-up and joystick codes, Maximum Hangtime's court selector
  and hot spots, the Super Nintendo courts and cheat ending, N64 and PlayStation big heads and rooftop, Genesis and
  Super Nintendo preset records, Tournament Edition title-menu records on Genesis and 32X, and the arcade match-up
  messages for NBA Jam and Tournament Edition.
- **Codes page:** checked against another published list. Things it already documents are no longer marked ★ New; its
  arcade Hangtime Secret Midway Menu, Super Nintendo Funcom photo, Game Boy debug viewer and 32X unused players were
  tested and added.
- **Codes page:** the Genesis Hangtime shots retaken with all graphics layers on (one had been switched off).
- **Notes:** the Genesis Hangtime "cut secret players" are default record holders; the Super Nintendo's hidden song
  has no code to play it; the full Super Nintendo ending; build dates and developer messages confirmed.

## 1.3.5 (2026-10-24)
- **Codes page:** click a screenshot to see the whole screen in a popup, scaled up to fit.
- **Codes page:** a shorter introduction, the title "NBA Jam & Hangtime Secret Codes", and card notes in plain words
  instead of memory addresses.
- **README:** what's new grouped by game with a short glossary, and a legend for tested versus read-from-the-game.
- **Changelog:** each change on its own labelled line.

## 1.3.4 (2026-10-24)
- **Codes page:** pick a game from three large logo cards, then a version from one row of buttons.
- **Codes page:** the header logo follows the chosen game, and each game remembers the version you last picked.

## 1.3.3 (2026-10-24)
- **Codes page:** screenshots on the new finds: Hangtime's trivia password, hot spots caption, Genesis courts, ABA ball
  and credits, and Super Nintendo ball flash; NBA Jam's tank reward, copyright screen, stats menus, Jaguar codes,
  assistance-off caption and one-team-short record.
- **README:** new title, a contents line, and the Hangtime finds split by version.

## 1.3.2 (2026-10-24)
- **Codes page:** the arcade NBA Hangtime trivia contest and its sweepstakes password.
- **Codes page:** the arcade joystick codes on N64 (all ten tested) and PlayStation.
- **Codes page:** OLDBOY tested on PlayStation; M-DOC works on the European N64 cartridge.
- **Codes page:** all eight Super Nintendo Hangtime joystick codes together play the cheat ending (tested).
- **Notes:** Maximum Hangtime flag scan, the European Hangtime versions, Genesis default records and unused text, and
  the PlayStation disc's leftover build map.

## 1.3.1 (2026-10-24)
- **Codes page:** Super Nintendo and Genesis Hangtime joystick codes. Two Super Nintendo codes are new; on Genesis the
  no-arrows code never takes effect and four published codes aren't in the game.
- **Codes page:** three Genesis options-screen codes; one plays the credits.
- **Codes page:** arcade NBA Hangtime already has a "HOTSPOTS ON" setting with nothing to turn it on.

## 1.3.0 (2026-10-24)
- **Codes page:** NBA Hangtime and Maximum Hangtime on arcade, N64, PlayStation, Super Nintendo and Genesis: every
  name and PIN (tested in MAME), the match-up numbers and the arcade joystick codes, with portraits.
- **Codes page:** a "★ New only / Cut or unused" filter.
- **Notes:** betas and regional versions, and the Genesis error and region-lock screens.
- **Repo:** a check that every password on the page decodes to its record.

## 1.2.2 (2026-10-24)
- **Codes page:** three cut PlayStation Tournament Edition characters (Wright, Kita, Sprite Boy) with portraits.
- **Codes page:** a Super Nintendo juice-mode password (beating all 27 teams turns juice mode on).
- **Notes:** arcade DIP switches, Super Nintendo controller warnings, the Genesis crash screen, the Sega CD's cut advert
  player, unused disc files on Saturn, PlayStation and Sega CD, and roster checks on the other versions.
- **Repo:** the disassembly, emulator and test scripts.

## 1.2.1 (2026-10-23)
- **Codes page:** the arcade games' preset records (13 on the original, 7 more on Tournament Edition), all tested.
- **Codes page:** the arcade prototypes' big heads.
- **Notes:** no other hidden inputs in either arcade game, a pause-quit on the Tournament Edition handhelds, the
  Tournament Edition prototype's location-test message, and corrected Super Nintendo and Sega CD input notes.

## 1.2.0 (2026-10-23)
- **Codes page:** on desktop, a small logo beside each row of version tabs, a wider page, and tabs and search that stay
  at the top while scrolling.
- **Checker:** on desktop, the password and the record side by side. Phones look the same as before.

## 1.1.9 (2026-10-23)
- **Codes page:** match-up power-ups for NBA Jam on Super Nintendo and Genesis (all seven tested; two published slips
  corrected).
- **Codes page:** the Sega CD's own seven match-up codes, all new.
- **Codes page:** the Jaguar's random secret character for 27-team records, now tested.

## 1.1.8 (2026-10-23)
- **Codes page:** two hidden Jaguar codes: * + # + Option after a reset clears the cartridge memory, and a 27-team
  record can give players a random secret character.
- **Notes:** the PC keyboard has no hidden codes.

## 1.1.7 (2026-10-23)
- **Codes page:** the PC's super speed measured in play: no effect (fixing one check makes it work).
- **Codes page:** the unused match-up code confirmed on Genesis and 32X: every other code reaches its player, this one
  doesn't.

## 1.1.6 (2026-10-23)
- **Codes page:** which arcade revisions have each match-up code, tested in MAME. Rev 2.00 has all but "computer
  assistance off"; rev 1.00 only defense and big heads, with no messages.

## 1.1.5 (2026-10-21)
- **Codes page:** the PC's shot percentage and big body codes set their flags but change nothing in play.
- **Codes page:** what the Jaguar's CD-ROM mode and Doom mode do.

## 1.1.4 (2026-10-21)
- **Codes page:** match-up codes for Tournament Edition on PlayStation (19), Saturn (19) and Jaguar (24), all tested.
  None are new.

## 1.1.3 (2026-10-20)
- **Codes page:** match-up codes for the original arcade game. The published intercept code needs 5 presses first, and
  there's no offense power-up.
- **Codes page:** what the tank game's reward gives.
- **Codes page:** the PC's 19 match-up codes (8 new; shot percentage, big body and super speed do nothing).
- **Codes page:** the PlayStation END record is no longer marked new.

## 1.1.2 (2026-10-20)
- **Codes page:** match-up power-ups for NBA Jam on Game Boy and Game Gear with exact press counts (the published juice
  mode codes are one press short).
- **Codes page:** the Saturn secret players do need L + R held on each letter.

## 1.1.1 (2026-10-18)
- **Checker:** clearer error messages, and a Tournament Edition record past 27 teams shows as all 27 beaten.
- **Codes page:** a clip that fails to play no longer leaves its button highlighted.
- **README:** rewritten to cover both pages and the research; MIT license added.

## 1.1.0 (2026-10-18)
- **Checker:** NBA Jam passwords from Game Boy and Game Gear, and Tournament Edition passwords from Game Boy and
  Game Gear.
- **Codes page:** match-up codes for Tournament Edition on Super Nintendo, Genesis and 32X, read from each game (12 of
  the 32X's are new, and all three have an unused code).
- **Codes page:** hidden title-menu codes and preset records, playable announcer clips for the Genesis speech codes,
  the arcade logos, and shorter notes.

## 1.0.0 (2026-10-17)
First release.
- **Checker:** check a Super Nintendo password against its initials, the way the game does, and see wins, losses,
  percentage, win streak and which of the 27 teams are beaten.
- **[Codes page](https://maxxthunder.github.io/nbajam/codes.html):** every secret character and hidden code for NBA Jam
  and Tournament Edition on every version, with portraits, and the ones no published list had marked ★ New.
