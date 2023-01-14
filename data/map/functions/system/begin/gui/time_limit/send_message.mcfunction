########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send time limit messages
tellraw @a ["",{"translate":"[制限時間] %s分","with":[{"score":{"name":"#map","objective":"TimeLimit"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function map:system/begin/gui/root/change_to