########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change number of teams
scoreboard players add #map NumberOfTeams 1
execute if score #map NumOfParticipants < #map NumberOfTeams run scoreboard players set #map NumberOfTeams 2
execute if score #map NumberOfTeams matches 6.. run scoreboard players set #map NumberOfTeams 2

## Set inventory
function map:system/begin/gui/team_match/change_to