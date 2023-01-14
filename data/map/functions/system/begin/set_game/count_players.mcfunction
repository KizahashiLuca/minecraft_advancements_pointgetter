########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Count players
scoreboard players set #map NumOfParticipants 0
execute as @a[predicate=map:player/participant] run scoreboard players add #map NumOfParticipants 1

## Test
execute if entity @p[predicate=map:player/test] run scoreboard players set #map NumOfParticipants 5