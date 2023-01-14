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
execute if predicate map:gamerules/world_border/0600 run function map:system/wait/set_world_border/0600
execute if predicate map:gamerules/world_border/0700 run function map:system/wait/set_world_border/0700
execute if predicate map:gamerules/world_border/0800 run function map:system/wait/set_world_border/0800
execute if predicate map:gamerules/world_border/0900 run function map:system/wait/set_world_border/0900
execute if predicate map:gamerules/world_border/1000 run function map:system/wait/set_world_border/1000