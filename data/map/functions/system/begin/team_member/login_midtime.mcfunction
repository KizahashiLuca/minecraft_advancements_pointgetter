########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
#### Spectator
gamemode spectator @s
team leave @s
scoreboard players reset @s

## Set player
#### Set bossbar
bossbar set minecraft:bossbar players @s
#### Reset inventory
clear @s
#### Reset experience
experience set @s 0 levels
experience set @s 0 points
#### Set effect
effect clear @s
effect give @s minecraft:resistance 1000000 6 true
effect give @s minecraft:fire_resistance 1000000 6 true
effect give @s minecraft:water_breathing 1000000 6 true
effect give @s minecraft:saturation 1000000 10 true
effect give @s minecraft:regeneration 1000000 10 true
#### Remove advancements
advancement revoke @s everything

## Count players
function map:system/begin/set_game/count_players