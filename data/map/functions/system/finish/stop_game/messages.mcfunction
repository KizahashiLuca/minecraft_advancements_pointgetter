########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send stop messages
function map:system/common/message/begin
tellraw @a ["",{"text":"  ゲームを中断します。","color":"red","bold":false,"italic":false}]