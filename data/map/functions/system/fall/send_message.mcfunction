########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send title messages
title @a title ["",{"text":"ゲームスタート","color":"red","bold":false,"italic":false}]
title @a times 20 80 20

## Send messages
tellraw @a ["",{"text":"[試合開始] 進捗がリセットされました。","color":"green","bold":false,"italic":false}]

## Change to start
function map:system/game/change_to