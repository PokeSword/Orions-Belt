# Orions Belt
Environment for linking to Pokemon SWSH's executable and implementing hooks.

## Setup
Install Python 3, [devkitPro](https://devkitpro.org/) and run `pip install keystone-engine`.

## Examples
Examples are included, see `source/main.cpp` and `patches/codehook.slpatch`

## Building
- Make sure that the `DEVKITPRO` environment variable is set to the path where devkitPro is installed.
- Run `make`.
- Copy the built `OrionsBelt.nso` to `/atmosphere/contents/0100ABF008968000/exefs/subsdk1`
- Copy `OrionsBelt_patch/main.ips` to `/atmosphere/contents/0100ABF008968000/exefs/main.ips`
(if you're using Yuzu, copy the .ips to the `exefs` directory inside your mod directory, see their [game modding guide](https://yuzu-emu.org/help/feature/game-modding/)).

## Orions Belt Contributors
- [3096](https://github.com/3096)
- [khang06](https://github.com/khang06)
- [OatmealDome](https://github.com/OatmealDome)
- [Random0666](https://github.com/random0666)
- [shadowninja108](https://github.com/shadowninja108)
- [shibbo](https://github.com/shibbo) - hyperbeam repo based on their work on OdysseyReversed
- [Thog](https://github.com/Thog) - Expertise in how rtld is implemented
- [Tech-Ticks](https://github.com/tech-ticks) - Repo based on their hyperbeam project

## Credits
- djkaty - Il2CppInspector (used to generate headers and extract function offsets)
- brycewithfiveunderscores - [Starlight-SMO-Example](https://github.com/brycewithfiveunderscores/Starlight-SMO-Example)
- devkitA64
- libnx - switch build rules
