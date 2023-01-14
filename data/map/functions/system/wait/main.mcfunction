########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
execute as @a[predicate=map:system/wait/login_midtime] run function map:system/common/login_midtime

## Time system
function map:system/wait/time/tick

## Position
function map:system/common/set_position/main

## Set bossbar & gamerule - teams
execute if predicate map:system/wait/set_teams run function map:system/wait/set_teams/main

## Set world border
execute if predicate map:system/wait/set_world_border at @e[predicate=map:marker/world_spawn,limit=1] run function map:system/wait/set_world_border/main

## Teleport system
execute as @a[predicate=map:system/common/teleport/main] run function map:system/common/teleport/main

## Change phase
execute if predicate map:system/wait/time/eq_zero run function map:system/fall/change_to