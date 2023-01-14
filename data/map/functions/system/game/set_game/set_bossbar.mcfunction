########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Reset bossbar
bossbar set minecraft:bossbar name ["",{"translate":"ゲームフェーズ - 制限時間 %s分 %s秒","with":[{"score":{"name":"#map","objective":"Minute"}},{"score":{"name":"#map","objective":"Second"}}],"color":"white","bold":false,"italic":false}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #map TotalSecond
execute store result bossbar minecraft:bossbar value run scoreboard players get #map TotalSecond
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar color green
bossbar set minecraft:bossbar visible true