########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players operation #map WorldBorderTmp = #map WorldBorder
scoreboard players operation #map WorldBorderTmp /= #map 2

## Set world spawn
execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosZ run data get entity @s Pos[2]

## Detect world border in the end
scoreboard players operation @s PosXCeil = @s PosX
scoreboard players operation @s PosZCeil = @s PosZ
scoreboard players operation @s PosXFloor = @s PosX
scoreboard players operation @s PosZFloor = @s PosZ
scoreboard players operation @s PosXCeil += #map WorldBorderTmp
scoreboard players operation @s PosZCeil += #map WorldBorderTmp
scoreboard players operation @s PosXFloor -= #map WorldBorderTmp
scoreboard players operation @s PosZFloor -= #map WorldBorderTmp
scoreboard players set #map WorldBorderEnd 0
execute as @s[scores={PosXCeil=200..,PosXFloor=..-200,PosZCeil=200..,PosZFloor=..-200}] run scoreboard players set #map WorldBorderEnd 1