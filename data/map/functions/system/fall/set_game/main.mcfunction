########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set gamerules
execute in minecraft:overworld run function map:system/fall/set_game/set_gamerules
execute in minecraft:the_nether run function map:system/fall/set_game/set_gamerules
execute in minecraft:the_end run function map:system/fall/set_game/set_gamerules

## Change bossbar
function map:system/fall/set_game/set_bossbars

## Set world
function map:system/fall/set_game/set_world

## Set players
function map:system/fall/set_game/set_players

## Set scoreboards
function map:system/wait/set_game/set_scoreboards