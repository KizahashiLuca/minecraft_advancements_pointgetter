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
tellraw @a ["",{"text":"  個人戦のトライアルを開始します。","color":"white","bold":false,"italic":false}]
function map:system/common/message/end

## Change to choose setting
function map:system/trial/set_trial/change_to