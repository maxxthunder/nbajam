# Research notes

How everything on the [secret codes page](https://maxxthunder.github.io/nbajam/codes.html) and in the
[password checker](https://maxxthunder.github.io/nbajam/) was found and checked: the addresses in each game, how
each code works, and which emulator tests confirmed it. The codes page gives the short version; these notes give the
proof.

## NBA Jam

- **[arcade.md](arcade.md)**: the original arcade game.
  [Secret characters](arcade.md#secret-characters-nothing-new),
  [the tank game's reward](arcade.md#the-tank-games-reward-rev-3),
  [match-up codes](arcade.md#match-up-codes-rev-301),
  [the hidden copyright message](arcade.md#hidden-copyright-message),
  [the hidden stats menu](arcade.md#hidden-stats-menu-rev-301) and
  [unused graphics](arcade.md#unused-graphics).
- **[secrets.md](secrets.md)**: Super Nintendo, Genesis, Sega CD, Game Boy and Game Gear.
  [Secret characters](secrets.md#secret-characters),
  [Genesis speech initials](secrets.md#genesis-speech-initials),
  [match-up power-ups](secrets.md#super-nintendo-genesis-and-sega-cd-match-up-power-ups),
  [controller warning screens](secrets.md#super-nintendo-controller-warning-screens),
  [Iguana's crash screen](secrets.md#genesis-iguanas-crash-screen) and
  [the Super Nintendo's packed graphics](secrets.md#super-nintendo-packed-graphics). Also the leftovers from other
  games, such as the 32X Tournament Edition's crash screen.

## Tournament Edition

- **[arcade_te.md](arcade_te.md)**: the arcade game, all nine revisions.
  [Secret characters](arcade_te.md#secret-characters),
  [match-up codes](arcade_te.md#match-up-codes),
  [the Secret Midway menu](arcade_te.md#secret-midway-menu),
  [unused commentary](arcade_te.md#unused-commentary) and
  [unused graphics](arcade_te.md#unused-graphics).
- **[te_consoles.md](te_consoles.md)**: every home version.
  [The secret character table](te_consoles.md#whats-in-the-table),
  [match-up codes](te_consoles.md#match-up-codes),
  [Jaguar](te_consoles.md#jaguar), [Saturn](te_consoles.md#saturn),
  [PlayStation](te_consoles.md#playstation), [PC](te_consoles.md#pc-ms-dos), and the
  [checks against published lists](te_consoles.md#checked-against-published-lists): unused heads on Super Nintendo,
  Genesis and 32X, and unused courtside ads.

## NBA Hangtime and Maximum Hangtime

- **[hangtime.md](hangtime.md)**: arcade and home.
  [Secret players](hangtime.md#arcade-secret-players),
  [Tonight's Match-Up codes](hangtime.md#arcade-tonights-match-up-codes),
  [joystick codes](hangtime.md#arcade-match-up-joystick-codes),
  [the trivia contest](hangtime.md#arcade-the-trivia-contest),
  [Maximum Hangtime](hangtime.md#maximum-hangtime),
  [N64 and PlayStation](hangtime.md#n64-and-playstation),
  [Super Nintendo and Genesis](hangtime.md#super-nintendo-and-genesis) and
  [unused graphics](hangtime.md#arcade-unused-graphics).

## Other versions and the passwords

- **[variants.md](variants.md)**: betas, prototypes and regional versions.
- **[nbajam_password.md](nbajam_password.md)**: both password formats, the key made from the initials, and the
  encoder and decoder.

## How the checks were done

The games were disassembled and every finding entered or forced in an emulator: Mesen 2 and BizHawk (Super
Nintendo), BizHawk (Genesis, 32X, Sega CD, Game Boy, Game Gear, Saturn, PlayStation, N64, Jaguar), MAME (arcade) and
DOSBox-X (PC). The scripted tests are in [`tools/tests/`](../tools/tests/) and the runners in
[`tools/emu/`](../tools/emu/).
