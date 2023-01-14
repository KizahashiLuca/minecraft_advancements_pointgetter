########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send reject messages
function map:system/common/message/begin
tellraw @a ["",{"text":"  人数エラー","color":"yellow","bold":true,"italic":false}]
tellraw @a ["",{"translate":"  ゲームの必要人数は %s 人です。","with":[{"text":" 1 - 20 ","color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
function map:system/common/message/end