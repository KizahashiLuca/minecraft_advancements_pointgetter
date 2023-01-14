########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change deathMessageVisibility
scoreboard players add #map VisibleDeath 1
execute if score #map VisibleDeath matches 2.. run scoreboard players set #map VisibleDeath 0

## Set inventory
function map:system/begin/gui/team_match/other_rules/change_to