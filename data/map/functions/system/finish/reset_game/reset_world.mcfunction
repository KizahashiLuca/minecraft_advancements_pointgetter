########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport
execute if entity @p[predicate=map:player/alive] run tp @a @p[predicate=map:player/alive,sort=random]

## Reset difficulty
difficulty peaceful

## Reset time
time set noon

## Reset weather
weather clear

## Kill entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:chest_minecart,tag=MAP_Minecart]
kill @e[type=minecraft:armor_stand,tag=MAP_MinecartItem]

## Reset world border
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968
execute in minecraft:the_nether run worldborder center 0 0
execute in minecraft:the_nether run worldborder set 59999968
execute in minecraft:the_end run worldborder center 0 0
execute in minecraft:the_end run worldborder set 59999968

## Forceload remove
forceload remove all