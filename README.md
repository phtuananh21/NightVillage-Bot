﻿# BuilderHall – Clash of Clans Builder Base Bot

A focused, Builder Base–only Clash of Clans automation bot based on MyBot/BuilderHall.

## What it does
- Automatically attacks in **Builder Base 2.0**
- Deploys all troops to a **single corner point** each battle
- **Smart ability system:**
  - Battle Machine / Battle Copter: waits ~20s after first charge before activating (fuller rage bar)
  - Night Witch, Cannon Cart, Drop Ship, etc.: activates ability immediately after deployment
  - Bomber: ability activated when ready (existing logic)
- Fast troop deployment (300ms between troop types, 100ms between same-type troops)

## Requirements
- Windows 10/11
- [AutoIt v3](https://www.autoitscript.com/site/autoit/downloads/)
- BlueStacks 5 (or compatible Android emulator)
- Clash of Clans installed on emulator

## Setup
1. Open BlueStacks and launch Clash of Clans
2. Go to Builder Base, make sure you can attack
3. Run `BuilderHall.au3` (or compiled `BuilderHall.exe`) with AutoIt

## Changelog

### v1.2.0
- Drop all troops at a single corner point (instead of spreading across the wall)
- BM/Copter ability: wait 20s after charge 1 (timer no longer resets on "Wait" detection)
- Troop ability (Witch, Cannon Cart, etc.): click immediately after deploy
- Faster deploy: NextTroopDelay 300ms, SameTroopDelay 100ms

### v1.1.0
- Builder Base–only UI (hides Attack Log, shows only BB-relevant tabs)
- Focus on BB automation loop

### v1.0.0
- Initial release based on MyBot/BuilderHall

## License
GNU General Public License v3 – see [LICENSE](LICENSE)