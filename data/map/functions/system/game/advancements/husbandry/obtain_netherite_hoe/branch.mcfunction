########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Branch team
execute if score #map_team_a AD_Husbandry_obtain_netherite_hoe matches 0 as @s[predicate=map:player/team/a] run function map:system/game/advancements/husbandry/obtain_netherite_hoe/team/a
execute if score #map_team_b AD_Husbandry_obtain_netherite_hoe matches 0 as @s[predicate=map:player/team/b] run function map:system/game/advancements/husbandry/obtain_netherite_hoe/team/b
execute if score #map_team_c AD_Husbandry_obtain_netherite_hoe matches 0 as @s[predicate=map:player/team/c] run function map:system/game/advancements/husbandry/obtain_netherite_hoe/team/c
execute if score #map_team_d AD_Husbandry_obtain_netherite_hoe matches 0 as @s[predicate=map:player/team/d] run function map:system/game/advancements/husbandry/obtain_netherite_hoe/team/d
execute if score #map_team_e AD_Husbandry_obtain_netherite_hoe matches 0 as @s[predicate=map:player/team/e] run function map:system/game/advancements/husbandry/obtain_netherite_hoe/team/e

## Set scoreboard
scoreboard players set @s[scores={AD_Husbandry_obtain_netherite_hoe=0}] AD_Husbandry_obtain_netherite_hoe 1
