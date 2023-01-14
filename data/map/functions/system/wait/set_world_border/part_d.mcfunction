########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border & cloud
worldborder center ~ ~
execute if predicate map:gamerules/world_border/1600 run function map:system/wait/set_world_border/1600
execute if predicate map:gamerules/world_border/1700 run function map:system/wait/set_world_border/1700
execute if predicate map:gamerules/world_border/1800 run function map:system/wait/set_world_border/1800
execute if predicate map:gamerules/world_border/1900 run function map:system/wait/set_world_border/1900
execute if predicate map:gamerules/world_border/2000 run function map:system/wait/set_world_border/2000
execute if predicate map:gamerules/world_border/unlimited run function map:system/wait/set_world_border/unlimited