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
scoreboard players operation #map Digit0100 = #map TimeLimit
scoreboard players operation #map Digit0100 /= #map 100
scoreboard players operation #map Digit0010 = #map TimeLimit
scoreboard players operation #map Digit0010 %= #map 100
scoreboard players operation #map Digit0010 /= #map 10
scoreboard players operation #map Digit0001 = #map TimeLimit
scoreboard players operation #map Digit0001 %= #map 100
scoreboard players operation #map Digit0001 %= #map 10

## Replace inventory
loot replace entity @p[predicate=map:player/host] inventory.4 loot map:system/begin/gui/root/time_limit
loot replace entity @p[predicate=map:player/host] inventory.12 loot map:system/begin/gui/number/digit_0100
loot replace entity @p[predicate=map:player/host] inventory.13 loot map:system/begin/gui/number/digit_0010
loot replace entity @p[predicate=map:player/host] inventory.14 loot map:system/begin/gui/number/digit_0001
loot replace entity @p[predicate=map:player/host] inventory.15 loot map:system/begin/gui/number/kanji_fun
loot replace entity @p[predicate=map:player/host] inventory.19 loot map:system/begin/gui/common/cancel
loot replace entity @p[predicate=map:player/host] inventory.21 loot map:system/begin/gui/common/default
loot replace entity @p[predicate=map:player/host] inventory.23 loot map:system/begin/gui/common/reset
loot replace entity @p[predicate=map:player/host,predicate=map:system/begin/gui/time_limit/gt_zero] inventory.25 loot map:system/begin/gui/time_limit/ok

## Change phase
scoreboard players set #map Phase 2