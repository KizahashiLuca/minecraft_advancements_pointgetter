########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Branch team
execute if score #map_team_a AD_End_dragon_breath matches 0 as @s[predicate=map:player/team/a] run function map:system/game/advancements/end/dragon_breath/team/a
execute if score #map_team_b AD_End_dragon_breath matches 0 as @s[predicate=map:player/team/b] run function map:system/game/advancements/end/dragon_breath/team/b
execute if score #map_team_c AD_End_dragon_breath matches 0 as @s[predicate=map:player/team/c] run function map:system/game/advancements/end/dragon_breath/team/c
execute if score #map_team_d AD_End_dragon_breath matches 0 as @s[predicate=map:player/team/d] run function map:system/game/advancements/end/dragon_breath/team/d
execute if score #map_team_e AD_End_dragon_breath matches 0 as @s[predicate=map:player/team/e] run function map:system/game/advancements/end/dragon_breath/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_End_dragon_breath=0}] AD_End_dragon_breath 1
