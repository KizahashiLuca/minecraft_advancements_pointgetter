########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
execute as @a[predicate=map:system/game/login_midtime] run function map:system/game/login_midtime

## Timer
function map:system/game/timer/tick

## Position
function map:system/common/set_position/main

## Minecart system
execute as @e[predicate=map:system/game/minecart/summon] at @s run function map:system/game/minecart/summon_minecart
execute as @e[predicate=map:minecart/not_on_ground] at @s run function map:system/game/minecart/not_on_ground
execute as @e[predicate=map:minecart/on_ground] at @s run function map:system/game/minecart/on_ground

## Teleport system
execute as @a[predicate=map:system/common/teleport/main] run function map:system/common/teleport/main

## Detect death
execute as @a[predicate=map:player/dying] run function map:system/game/detect_death/main

## Count the alive
function map:system/game/count_alive/a
function map:system/game/count_alive/b
function map:system/game/count_alive/c
function map:system/game/count_alive/d
function map:system/game/count_alive/e

## Exit game
execute if predicate map:system/game/timer/eq_zero run scoreboard players set #map Phase 22