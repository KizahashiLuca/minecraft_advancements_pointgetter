########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send kill time messages
tellraw @a ["",{"translate":"[デスからリスポーンにかかる時間] %s分","with":[{"score":{"name":"#map","objective":"DeathPenaltyTime"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to team_match
function map:system/begin/gui/team_match/change_to