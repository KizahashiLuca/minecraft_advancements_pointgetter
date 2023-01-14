########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Reset world
execute in minecraft:overworld run function map:system/finish/reset_game/reset_gamerules
execute in minecraft:the_nether run function map:system/finish/reset_game/reset_gamerules
execute in minecraft:the_end run function map:system/finish/reset_game/reset_gamerules

## Reset world
function map:system/finish/reset_game/reset_world

## Reset players
function map:system/finish/reset_game/reset_players

## Remove tags
function map:system/finish/reset_game/remove_tags

## Remove teams
function map:system/finish/reset_game/remove_teams

## Remove bossbars
function map:system/finish/reset_game/remove_bossbars

## Remove scoreboards
function map:system/finish/reset_game/reset_scoreboards
function map:system/finish/reset_game/reset_advancements_scoreboards

## Change gamemode
gamemode adventure @a
