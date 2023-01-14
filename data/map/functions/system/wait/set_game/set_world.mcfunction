########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set difficulty
execute if predicate map:gamerules/difficulty/peaceful run difficulty peaceful
execute if predicate map:gamerules/difficulty/easy run difficulty easy
execute if predicate map:gamerules/difficulty/normal run difficulty normal
execute if predicate map:gamerules/difficulty/hard run difficulty hard

## Set time
time set noon

## Set weather
weather clear

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:chest_minecart,tag=MAP_Minecart]
kill @e[type=minecraft:armor_stand,tag=MAP_MinecartItem]

## Set world border
execute as @e[predicate=map:marker/world_spawn,limit=1] at @s run function map:system/wait/set_game/set_world_border