########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set preview choice
scoreboard players operation #map friendlyFirePrv = #map friendlyFire
scoreboard players operation #map collisionRulePrv = #map collisionRule
scoreboard players operation #map VisibleNamePrv = #map VisibleName
scoreboard players operation #map VisibleInvisPrv = #map VisibleInvis
scoreboard players operation #map VisibleDeathPrv = #map VisibleDeath

## Send messages
function map:system/begin/gui/team_match/other_rules/send_message