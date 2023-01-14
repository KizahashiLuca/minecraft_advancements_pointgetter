########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set bossbar for settings
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #map WaitTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #map WaitTime
bossbar set minecraft:bossbar color white
bossbar set minecraft:bossbar style notched_10
bossbar set minecraft:bossbar visible true