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

## Replace inventory
loot replace entity @p[predicate=map:player/host] inventory.11 loot map:system/begin/gui/root/time_limit
loot replace entity @p[predicate=map:player/host] inventory.12 loot map:system/begin/gui/root/minecart_interval
loot replace entity @p[predicate=map:player/host] inventory.13 loot map:system/begin/gui/root/gamerules
loot replace entity @p[predicate=map:player/host] inventory.14 loot map:system/begin/gui/root/world_border
loot replace entity @p[predicate=map:player/host,predicate=map:gamerules/num_of_participants/not_one] inventory.15 loot map:system/begin/gui/root/team_match

loot replace entity @p[predicate=map:player/host] inventory.19 loot map:system/begin/gui/root/cancel_game
loot replace entity @p[predicate=map:player/host] inventory.25 loot map:system/begin/gui/root/start_game

## Change phase
scoreboard players set #map Phase 1