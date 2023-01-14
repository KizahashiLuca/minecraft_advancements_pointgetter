########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add 100secs
scoreboard players add #map DeathPenaltyTime 100
execute if predicate map:system/begin/gui/team_match/death_penalty_time/ge_thousand run scoreboard players remove #map DeathPenaltyTime 1000
function map:system/begin/gui/team_match/death_penalty_time/change_to