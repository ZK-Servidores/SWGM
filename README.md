# [CORE] Steam Works Group Manager [SWGM]
This plugin provides additional features for others plugins, working as core.

- Checks if the player is in the Steam Group;
- Allows access to commands only if you are in the Steam Group;

## Commands
- **`sm_swgm_check`** - Force check all connected players;
- **`sm_swgm_cl_reload`** - Reload config of **[SWGM] Command Listener**;

## Cvars
- **`sm_swgm_groupid "0"`** - Steam ID Group Identifier;
- **`sm_swgm_timer "60"`** - Interval between checks on the Steam Group;

## Requirements
- [SourceMod 1.10+](https://www.sourcemod.net/downloads.php?branch=stable);
- [SteamWorks](https://forums.alliedmods.net/showthread.php?t=229556);

## Instalation
Put these files into your sourcemod folder.

Open **Group Steam Administration Panel** and copy **Group Steam ID** then set it in **`swgm_groupid`**, located in the **`cfg/sourcemod/swgm.cfg`** folder.
