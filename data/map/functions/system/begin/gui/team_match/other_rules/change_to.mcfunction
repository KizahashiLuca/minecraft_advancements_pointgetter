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
loot replace entity @p[predicate=map:player/host] inventory.4 loot map:system/begin/gui/team_match/other_rules
loot replace entity @p[predicate=map:player/host] inventory.11 loot map:system/begin/gui/team_match/other_rules/friendly_fire
loot replace entity @p[predicate=map:player/host] inventory.12 loot map:system/begin/gui/team_match/other_rules/collision_rule
loot replace entity @p[predicate=map:player/host] inventory.13 loot map:system/begin/gui/team_match/other_rules/nametag_visibility
loot replace entity @p[predicate=map:player/host] inventory.14 loot map:system/begin/gui/team_match/other_rules/see_friendly_invisibles
loot replace entity @p[predicate=map:player/host] inventory.15 loot map:system/begin/gui/team_match/other_rules/death_message_visibility

loot replace entity @p[predicate=map:player/host] inventory.19 loot map:system/begin/gui/common/cancel
loot replace entity @p[predicate=map:player/host] inventory.22 loot map:system/begin/gui/common/default
loot replace entity @p[predicate=map:player/host] inventory.25 loot map:system/begin/gui/common/ok

## Change phase
scoreboard players set #map Phase 13