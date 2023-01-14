########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Number the players
scoreboard players operation @p[predicate=map:system/wait/set_game/not_numbered,sort=random] ParticipantNumber = #map ParticipantNumber
execute as @a[predicate=map:system/wait/set_game/not_numbered] if score @s ParticipantNumber = #map ParticipantNumber run tag @s add MAP_Numbered

## Loop
scoreboard players add #map ParticipantNumber 1
execute if score #map ParticipantNumber <= #map NumOfParticipants run function map:system/wait/set_game/numbering