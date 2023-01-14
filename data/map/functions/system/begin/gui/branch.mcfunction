########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
execute as @a[predicate=map:system/begin/gui/login_midtime] run function map:system/begin/gui/login_midtime

## Title message
function map:system/begin/gui/title

## Branch
execute if predicate map:phase/begin/gui/team_match/other_rules run function map:system/begin/gui/team_match/other_rules/main
execute if predicate map:phase/begin/gui/team_match/death_penalty_time run function map:system/begin/gui/team_match/death_penalty_time/main
execute if predicate map:phase/begin/gui/team_match run function map:system/begin/gui/team_match/main
execute if predicate map:phase/begin/gui/world_border run function map:system/begin/gui/world_border/main
execute if predicate map:phase/begin/gui/gamerules run function map:system/begin/gui/gamerules/main
execute if predicate map:phase/begin/gui/minecart_interval run function map:system/begin/gui/minecart_interval/main
execute if predicate map:phase/begin/gui/time_limit run function map:system/begin/gui/time_limit/main
execute if predicate map:phase/begin/gui/root run function map:system/begin/gui/root/main