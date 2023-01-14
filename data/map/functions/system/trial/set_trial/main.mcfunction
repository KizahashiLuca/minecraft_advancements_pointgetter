########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set gamerules
execute in minecraft:overworld run function map:system/trial/set_trial/set_gamerules
execute in minecraft:the_nether run function map:system/trial/set_trial/set_gamerules
execute in minecraft:the_end run function map:system/trial/set_trial/set_gamerules

## Set world
function map:system/game/set_game/set_world

## Set tags
function map:system/trial/set_trial/set_tags

## Set players
gamemode adventure @a[predicate=map:player/participant]

## Set players
function map:system/begin/set_game/set_teams

## Set players
function map:system/trial/set_trial/set_players

## Set scoreboards
function map:system/begin/set_game/add_scoreboards
function map:system/begin/set_game/set_scoreboards
function map:system/game/set_game/set_scoreboards

## Set random seed
function map:system/common/randomizer/initialize

## Set world
function map:system/begin/set_game/set_world

## Detect version
function map:system/begin/set_game/detect_version

## Send messages
execute if predicate map:version/accept run function map:system/trial/set_trial/send_messages
execute if predicate map:version/error run function map:system/finish/version_error/main