########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set position
execute store result score @s PosX run data get entity @s Pos[0] 1
execute store result score @s PosY run data get entity @s Pos[1] 1
execute store result score @s PosZ run data get entity @s Pos[2] 1
execute store result score @s Angle run data get entity @s Rotation[0] 1
scoreboard players add @s Angle 22
scoreboard players add @s[predicate=map:system/common/set_position/le_zero] Angle 360
scoreboard players operation @s Angle /= #map 45