########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Reset choice
scoreboard players operation #map friendlyFire = #map friendlyFirePrv
scoreboard players operation #map collisionRule = #map collisionRulePrv
scoreboard players operation #map VisibleName = #map VisibleNamePrv
scoreboard players operation #map VisibleInvis = #map VisibleInvisPrv
scoreboard players operation #map VisibleDeath = #map VisibleDeathPrv

## Send messages
function map:system/begin/gui/team_match/other_rules/send_message