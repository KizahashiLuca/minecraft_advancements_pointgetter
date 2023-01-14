########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send messages
tellraw @a[predicate=map:gamerules/team_match/team_member/random] ["",{"translate":"[チームメンバー選択] %s","with":[{"text":"自動(ランダム)","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/team_match/team_member/manual] ["",{"translate":"[チームメンバー選択] %s","with":[{"text":"手動","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a ["",{"translate":"[チーム数] %sチーム","with":[{"score":{"name":"#map","objective":"NumberOfTeams"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to choose setting
function map:system/begin/gui/root/change_to