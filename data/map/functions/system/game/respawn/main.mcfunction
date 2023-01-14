########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Title
title @s title ["",{"text":"生き返った！","color":"red","bold": true,"italic":false}]
title @s times 20 80 20

## Set alive
gamemode survival @s
kill @s
scoreboard players set @s Death 0
scoreboard players set @s Phase 21
scoreboard players set @s Minute 0
scoreboard players set @s Second 0
scoreboard players set @s Tick 0

## Playsound
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0.05 1000 normal @a
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0