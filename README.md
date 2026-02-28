﻿<div align="center">
  <img src="https://mybot.run/forums/uploads/monthly_2020_02/1077755866_headerlogo(2).png.7c1bc0fd3c7b74bd79ebd09af6db5d24.png" width="400" alt="MyBot Logo"/>
  <h1>BuilderHall Auto</h1>
  <p><strong>A dedicated Clash of Clans Builder Base automation bot, modified from <a href="https://github.com/MyBotRun/MyBot">MyBot.run</a>.</strong></p>

  <p>
    <a href="https://github.com/MyBotRun/MyBot/releases"><img alt="Original Project" src="https://img.shields.io/badge/Forked%20from-MyBot.run-blue?style=flat-square&logo=github"></a>
    <a href="https://www.autoitscript.com/site/autoit/"><img alt="Language" src="https://img.shields.io/badge/Language-AutoIt-orange?style=flat-square"></a>
    <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/License-GPLv3-green?style=flat-square"></a>
  </p>
</div>

---

## ⚡ What is BuilderHall Auto?

BuilderHall Auto is a completely streamlined and customized version of the famous **MyBot.run** project. While the original bot focuses primarily on the Main Village, this project has been heavily modified and optimized **exclusively for Builder Base 2.0 (Builder Hall) automation**.

All unnecessary UI elements, Main Village detection code, and features have been stripped out to ensure maximum performance and focus on Builder Base farming.

## ✨ Key Features & Improvements
- **100% Builder Base Focus:** Skips the Main Village entirely and jumps straight to Builder Base logic. Hides unrelated UI tabs like Attack Log for a cleaner interface.
- **Optimized Troop Deployment:** Drops all troops efficiently at a single concentrated corner of the base, maximizing attack power.
- **Smart Hero Logic:** Battle Machine & Battle Copter won't waste their ability at Charge 1. The bot intelligently waits ~20 seconds to accumulate a **Level 3 Charge** before activating.
- **Instant Abilities:** Troops with active abilities in BB 2.0 (Night Witch, Cannon Cart, Drop Ship, etc.) will have their abilities triggered *immediately* after deployment.
- **Lightning Fast:** Deployment delays have been massively reduced (300ms for switching troops, 100ms for deploying the same troop type) making attacks incredibly swift.

## 🛠️ Prerequisites

Before you begin, ensure you have met the following requirements:
* **Operating System:** Windows 10 or 11
* **Language:** [AutoIt v3](https://www.autoitscript.com/site/autoit/downloads/) installed (if running from source).
* **Emulator:** BlueStacks 5 (or any compatible Android emulator like LDPlayer/MEmu).
* **Game:** Clash of Clans installed and updated on the emulator.

## 🚀 Getting Started

1. Open your Android emulator and launch **Clash of Clans**.
2. Navigate to your **Builder Base** manually (optional but recommended to ensure readiness).
3. Run the `BuilderHall.au3` script using AutoIt, OR launch the compiled `BuilderHall.exe` if available.
4. Go to the **Bot** tab, configure your troop deployment preferences if needed, and click **Start**.

## 📜 Changelog

For detailed release notes and version history, please check the [Releases page](../../releases) on GitHub.

## 📄 License & Credits

* This project is a modified fork of **[MyBot.run](https://github.com/MyBotRun/MyBot)**. Huge thanks to the original developers and the MyBot community.
* Licensed under the **GNU General Public License v3** - see the `LICENSE` file for details.