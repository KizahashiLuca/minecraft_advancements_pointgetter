########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set preview choice
scoreboard players operation #map DeathPenaltyTimePrv = #map DeathPenaltyTime

## Send messages
function map:system/begin/gui/team_match/death_penalty_time/send_message