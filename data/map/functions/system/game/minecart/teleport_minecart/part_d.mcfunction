########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport
execute if predicate map:gamerules/world_border/1600 run spreadplayers ~ ~ 0 800 false @s
execute if predicate map:gamerules/world_border/1700 run spreadplayers ~ ~ 0 850 false @s
execute if predicate map:gamerules/world_border/1800 run spreadplayers ~ ~ 0 900 false @s
execute if predicate map:gamerules/world_border/1900 run spreadplayers ~ ~ 0 950 false @s
execute if predicate map:gamerules/world_border/2000 run spreadplayers ~ ~ 0 1000 false @s
execute if predicate map:gamerules/world_border/unlimited run spreadplayers ~ ~ 0 1000 false @s

## Forceload chunk
execute at @s run forceload add ~ ~ ~ ~