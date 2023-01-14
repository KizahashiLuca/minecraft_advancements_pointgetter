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

## Set gamerules
execute in minecraft:overworld run function map:system/begin/set_game/set_gamerules
execute in minecraft:the_nether run function map:system/begin/set_game/set_gamerules
execute in minecraft:the_end run function map:system/begin/set_game/set_gamerules

## Set players
function map:system/begin/set_game/set_players

## Set tags
function map:system/begin/set_game/set_tags

## Set teams
function map:system/begin/set_game/set_teams

## Add scoreboards
function map:system/begin/set_game/add_scoreboards
function map:system/begin/set_game/set_scoreboards
function map:system/begin/set_game/add_advancements_scoreboards
function map:system/begin/set_game/set_advancements_scoreboards

## Set world
function map:system/begin/set_game/set_world

## Set bossbars
function map:system/begin/set_game/set_bossbars

## Set random seed
function map:system/common/randomizer/initialize

## Detect version
function map:system/begin/set_game/detect_version

## Count players
function map:system/begin/set_game/count_players

## Set scoreboards
scoreboard players set #map NumberOfTeams 2
scoreboard players set #map WorldBorder 1500

## Send messages
execute if predicate map:system/begin/set_game/accept_condition run function map:system/begin/team_member/set_member_randomly
execute if predicate map:system/begin/set_game/version_error run function map:system/finish/version_error/main
execute if predicate map:system/begin/set_game/number_of_participants_error run function map:system/finish/number_of_participants_error/main