# Ace Combat 5 - Infinite Ammo

Infinite ammunition mod for the Ace Combat 5 Static Recompilation project.

## Current Status

- ✅ Standard missiles
- ⏳ Special weapons - in development

The mod currently provides infinite ammunition for standard missiles.
Support for special weapons is still being investigated and developed.

## About This Project

This mod was created purely as a hobby project and as an experiment
in reverse engineering, Lua scripting, and game modding.

Development is done in my free time, so I cannot guarantee when — or
if — a fully complete version supporting all weapons will be released.

The project may be updated whenever I have the time and motivation to
continue working on it.

## Technical Details

This mod was developed using Lua hooks and reverse engineering of the
Ace Combat 5 executable with Ghidra.

The standard missile ammunition counter was identified at:

- Function: `0x001273C8`
- Ammo offset: `0x1B27`

The mod stores the ammunition value before the original game function
executes and restores it afterwards, allowing the weapon to be fired
without consuming ammunition.

## Installation

1. Make sure you have the Ace Combat 5 Static Recompilation project installed.
2. Copy the `infinite_ammo` folder into the game's `mods` directory.
3. Start the game normally.

The structure should look like:

mods/
└── infinite_ammo/
    ├── mod.toml
    └── script.lua

## Credits

Mod created by **Elioenai Sodré**.

This mod was developed for the
[Ace Combat 5 Static Recompilation](https://github.com/sal063/Ace-Combat-5-Static-recompilation)
project by **sal063**.

This project is not affiliated with or endorsed by Bandai Namco.

## Disclaimer

Ace Combat 5 and its related assets are property of their respective
copyright holders.

This project contains only the mod code and does not distribute the
original game or its assets.
