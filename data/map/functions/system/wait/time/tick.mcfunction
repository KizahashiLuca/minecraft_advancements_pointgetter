########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Calculate time every second
execute if predicate map:system/wait/time/tick/eq_zero run function map:system/wait/time/second

## Calculate time every tick
scoreboard players remove #map Tick 1
execute if predicate map:system/wait/time/tick/lt_zero run scoreboard players set #map Tick 19

## Set bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get #map Second