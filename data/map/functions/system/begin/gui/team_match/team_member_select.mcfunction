########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change selecting team member manually
scoreboard players add #map SetTeamManual 1
execute if score #map SetTeamManual matches 2.. run scoreboard players set #map SetTeamManual 0

## Set inventory
function map:system/begin/gui/team_match/change_to