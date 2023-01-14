########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Initialize a seed
scoreboard players set #map RandomSeed 0
execute as @a store result score @s RandomSeed run data get entity @s Rotation[0] 10
execute as @a[scores={RandomSeed=..0}] run scoreboard players add @s RandomSeed 3600
execute as @a run scoreboard players operation #map RandomSeed += @s RandomSeed