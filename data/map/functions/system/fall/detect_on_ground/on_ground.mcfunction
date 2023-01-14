########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Clear effect
effect clear @s minecraft:slow_falling
#effect clear @s minecraft:resistance
#effect clear @s minecraft:invisibility
#effect clear @s minecraft:weakness

## Teleport
summon minecraft:marker ~ ~ ~ {Tags:["MAP_Teleporter","MAP_SummonedTeleporter"],NoGravity:1b,Invulnerable:1b}
scoreboard players operation @e[predicate=map:system/fall/teleport/summoned_teleporter] ParticipantNumber = @s ParticipantNumber

## Remove a tag
tag @e[predicate=map:system/fall/teleport/summoned_teleporter] remove MAP_SummonedTeleporter