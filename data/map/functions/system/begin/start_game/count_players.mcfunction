########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Count players
scoreboard objectives add NumOfParticipants dummy
tag @a[gamemode=!spectator] add MAP_Participant
function map:system/begin/set_game/count_players