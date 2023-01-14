########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Summon minecart
execute at @e[predicate=map:marker/world_spawn] run summon minecraft:marker ~ 320 ~ {Tags:["MAP_WhereSummonMinecart","MAP_DetectWhereSummonMinecart","MAP_NotSayNextMinecart"],NoGravity:1b,Invulnerable:1b}

## Decide where to summon minecart
execute as @e[predicate=map:marker/minecart/detect_where_summon_minecart] run function map:system/game/minecart/teleport_minecart/main