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

## Set inventory
loot replace entity @p[predicate=map:player/host] inventory.4 loot map:system/begin/gui/root/team_match
loot replace entity @p[predicate=map:player/host] inventory.12 loot map:system/begin/gui/team_match/team_member_select
loot replace entity @p[predicate=map:player/host] inventory.13 loot map:system/begin/gui/team_match/number_of_teams
loot replace entity @p[predicate=map:player/host] inventory.14 loot map:system/begin/gui/team_match/death_penalty_time
loot replace entity @p[predicate=map:player/host] inventory.17 loot map:system/begin/gui/team_match/other_rules

loot replace entity @p[predicate=map:player/host] inventory.19 loot map:system/begin/gui/common/cancel
loot replace entity @p[predicate=map:player/host] inventory.22 loot map:system/begin/gui/common/default
loot replace entity @p[predicate=map:player/host] inventory.25 loot map:system/begin/gui/common/ok

## Change phase
scoreboard players set #map Phase 10