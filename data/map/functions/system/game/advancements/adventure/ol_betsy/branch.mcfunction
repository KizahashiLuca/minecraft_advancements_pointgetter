########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Branch team
execute if score #map_team_a AD_Adventure_ol_betsy matches 0 as @s[predicate=map:player/team/a] run function map:system/game/advancements/adventure/ol_betsy/team/a
execute if score #map_team_b AD_Adventure_ol_betsy matches 0 as @s[predicate=map:player/team/b] run function map:system/game/advancements/adventure/ol_betsy/team/b
execute if score #map_team_c AD_Adventure_ol_betsy matches 0 as @s[predicate=map:player/team/c] run function map:system/game/advancements/adventure/ol_betsy/team/c
execute if score #map_team_d AD_Adventure_ol_betsy matches 0 as @s[predicate=map:player/team/d] run function map:system/game/advancements/adventure/ol_betsy/team/d
execute if score #map_team_e AD_Adventure_ol_betsy matches 0 as @s[predicate=map:player/team/e] run function map:system/game/advancements/adventure/ol_betsy/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Adventure_ol_betsy=0}] AD_Adventure_ol_betsy 1
