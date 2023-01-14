########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set gamemode
gamemode survival @a[predicate=map:player/participant]
gamemode spectator @a[predicate=map:player/not_participant]

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *

## Kill pet
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset inventory
clear @a

## Reset experience
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a[predicate=map:player/participant]