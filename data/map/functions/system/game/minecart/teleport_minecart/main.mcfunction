########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport origin
execute at @e[predicate=map:marker/world_spawn,limit=1] run function map:system/game/minecart/teleport_minecart/branch
execute at @e[predicate=map:marker/minecart/detect_where_summon_minecart,limit=1] run tp @s ~ 320 ~

## Forceload chunk
execute at @e[predicate=map:marker/minecart/detect_where_summon_minecart,limit=1] run forceload add ~ ~ ~ ~

## Set scoreboards
scoreboard players operation @s Minute = #map Minute
scoreboard players operation @s Minute -= #map CartInterval
scoreboard players operation @s Second = #map Second
scoreboard players set @s Tick 0
execute store result score @s PosX align x run data get entity @s Pos[0] 1
execute store result score @s PosY align x run data get entity @s Pos[1] 1
execute store result score @s PosZ align z run data get entity @s Pos[2] 1

## Remove a tag
tag @s remove MAP_DetectWhereSummonMinecart