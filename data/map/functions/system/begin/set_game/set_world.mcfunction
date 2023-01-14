########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set difficulty
difficulty peaceful

## Set time
time set noon

## Set weather
weather clear

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:chest_minecart,tag=MAP_Minecart]
kill @e[type=minecraft:armor_stand,tag=MAP_MinecartItem]
kill @e[type=minecraft:armor_stand,tag=MAP_CenterStand]

## Forceload chunks
execute at @p[predicate=map:player/host] run forceload add ~ ~

## Summon world spawn
execute at @p[predicate=map:player/host] align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["MAP_WorldSpawn"],NoGravity:1b,Invulnerable:1b}
execute at @p[predicate=map:player/host] align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["MAP_CenterStand"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoAI:1b}
execute store result score #map PosX run data get entity @e[predicate=map:marker/world_spawn,limit=1] Pos[0] 1.0
execute store result score #map PosY run data get entity @e[predicate=map:marker/world_spawn,limit=1] Pos[1] 1.0
execute store result score #map PosZ run data get entity @e[predicate=map:marker/world_spawn,limit=1] Pos[2] 1.0