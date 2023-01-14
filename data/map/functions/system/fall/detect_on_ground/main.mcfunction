########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect on ground
execute store result score @s OnGround run data get entity @s OnGround 2.0
scoreboard players set @s[predicate=map:system/fall/detect_on_ground/in_water] OnGround 2

## Summon teleporter
execute as @s[predicate=map:system/fall/detect_on_ground/on_ground] run function map:system/fall/detect_on_ground/on_ground