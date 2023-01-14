########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Reset teams
team leave @a

## Reset world
execute positioned 0 310 0 run fill ~-15 ~ ~-15 ~15 ~9 ~15 minecraft:air

## Change phase
function map:system/begin/gui/root/change_to