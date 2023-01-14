########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Title
title @a title ["",{"text":"BLUE","color":"blue","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"blue","bold":true}]

## Display Winners
tellraw @a ["",{"translate":"  試合が終了しました。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  勝者は %s です！","with": [{"text":"青チーム","color":"blue","bold":true}],"color":"white","bold":false,"italic":false}]