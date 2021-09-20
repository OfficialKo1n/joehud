Edited for joe-hud

fix minimap issue, gps issue, esx_status function and very optimized. `0.01 idle and 0.03 in vehicle`

For pna-voice compatible, you just need to put this in `pma-voice/client/main line 201` or inside +cycleproximity command

`exports['joehud']:Voicelevel(voiceMode)`

