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
execute if predicate map:gamerules/world_border/0100 run function map:system/wait/set_world_border/0100
execute if predicate map:gamerules/world_border/0200 run function map:system/wait/set_world_border/0200
execute if predicate map:gamerules/world_border/0300 run function map:system/wait/set_world_border/0300
execute if predicate map:gamerules/world_border/0400 run function map:system/wait/set_world_border/0400
execute if predicate map:gamerules/world_border/0500 run function map:system/wait/set_world_border/0500