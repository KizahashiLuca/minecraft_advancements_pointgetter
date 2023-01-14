########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Clear inventory
clear @p[predicate=map:player/host]

## Set scoreboard
scoreboard players operation #map Digit1000 = #map WorldBorder
scoreboard players operation #map Digit1000 /= #map 1000
scoreboard players operation #map Digit0100 = #map WorldBorder
scoreboard players operation #map Digit0100 %= #map 1000
scoreboard players operation #map Digit0100 /= #map 100
scoreboard players operation #map Digit0010 = #map WorldBorder
scoreboard players operation #map Digit0010 %= #map 1000
scoreboard players operation #map Digit0010 %= #map 100
scoreboard players operation #map Digit0010 /= #map 10
scoreboard players operation #map Digit0001 = #map WorldBorder
scoreboard players operation #map Digit0001 %= #map 1000
scoreboard players operation #map Digit0001 %= #map 100
scoreboard players operation #map Digit0001 %= #map 10

## Replace inventory
loot replace entity @p[predicate=map:player/host] inventory.4 loot map:system/begin/gui/root/world_border
execute if predicate map:system/begin/gui/world_border/eq_zero run function map:system/begin/gui/world_border/limited
execute if predicate map:system/begin/gui/world_border/limited run function map:system/begin/gui/world_border/limited
execute if predicate map:system/begin/gui/world_border/gt_2k run function map:system/begin/gui/world_border/limited
execute if predicate map:system/begin/gui/world_border/unlimited run function map:system/begin/gui/world_border/unlimited
execute if predicate map:system/begin/gui/world_border/gt_60k run function map:system/begin/gui/world_border/unlimited
loot replace entity @p[predicate=map:player/host] inventory.19 loot map:system/begin/gui/common/cancel
loot replace entity @p[predicate=map:player/host] inventory.21 loot map:system/begin/gui/common/default
loot replace entity @p[predicate=map:player/host] inventory.23 loot map:system/begin/gui/common/reset
loot replace entity @p[predicate=map:player/host,predicate=map:system/begin/gui/world_border/ne_zero] inventory.25 loot map:system/begin/gui/world_border/ok

## Change phase
scoreboard players set #map Phase 6