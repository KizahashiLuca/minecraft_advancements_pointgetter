########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true,"italic":false}]
title @s times 20 80 20

## Detect death
gamemode spectator @s
scoreboard players set @s Death 2
scoreboard players set @s Phase 22
scoreboard players operation @s Minute = #map Minute
scoreboard players operation @s Second = #map Second
scoreboard players operation @s Tick = #map Tick
scoreboard players operation @s Minute -= #map DeathPenaltyTime

## Branch team
execute as @s[predicate=map:player/team/a] run function map:system/game/detect_death/team/a
execute as @s[predicate=map:player/team/b] run function map:system/game/detect_death/team/b
execute as @s[predicate=map:player/team/c] run function map:system/game/detect_death/team/c
execute as @s[predicate=map:player/team/d] run function map:system/game/detect_death/team/d
execute as @s[predicate=map:player/team/e] run function map:system/game/detect_death/team/e