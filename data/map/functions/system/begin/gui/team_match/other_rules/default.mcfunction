########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Reset choice
scoreboard players set #map friendlyFire 1
scoreboard players set #map collisionRule 1
scoreboard players set #map VisibleName 1
scoreboard players set #map VisibleInvis 1
scoreboard players set #map VisibleDeath 1

## Set inventory
function map:system/begin/gui/team_match/other_rules/change_to