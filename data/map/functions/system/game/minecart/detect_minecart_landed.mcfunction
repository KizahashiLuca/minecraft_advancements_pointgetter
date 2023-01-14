########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[predicate=map:marker/world_spawn] run forceload add ~ ~ ~ ~

## Kill marker
kill @s