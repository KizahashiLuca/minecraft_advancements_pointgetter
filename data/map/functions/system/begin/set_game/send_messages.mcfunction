########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send messages
function map:system/common/message/begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"------------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  %s はインベントリで","with":[{"selector":"@p[predicate=map:player/host]","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  初期設定を開始してください。","color":"white","bold":false,"italic":false}]
function map:system/common/message/end

## Change to choose setting
function map:system/begin/gui/root/change_to