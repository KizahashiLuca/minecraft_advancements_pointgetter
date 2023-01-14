########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add 1000m
scoreboard players add #map WorldBorder 1000
execute if predicate map:system/begin/gui/world_border/gt_2k run scoreboard players set #map WorldBorder 59999968
execute if predicate map:system/begin/gui/world_border/unlimited run scoreboard players set #map WorldBorder 59999968
execute if predicate map:system/begin/gui/world_border/gt_60k run scoreboard players set #map WorldBorder 0
function map:system/begin/gui/world_border/change_to