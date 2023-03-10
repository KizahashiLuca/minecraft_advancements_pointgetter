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
execute if predicate map:gamerules/world_border/1100 run function map:system/wait/set_world_border/1100
execute if predicate map:gamerules/world_border/1200 run function map:system/wait/set_world_border/1200
execute if predicate map:gamerules/world_border/1300 run function map:system/wait/set_world_border/1300
execute if predicate map:gamerules/world_border/1400 run function map:system/wait/set_world_border/1400
execute if predicate map:gamerules/world_border/1500 run function map:system/wait/set_world_border/1500