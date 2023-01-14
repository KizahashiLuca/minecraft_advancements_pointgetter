########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/b] AD_Husbandry_tactical_fishing 1
scoreboard players operation #map_team_b AD_Husbandry_tactical_fishing = #map AD_Husbandry_tactical_fishing
scoreboard players add #map_team_b HasAdvancements 1
scoreboard players operation #map_team_b Points += #map AD_Husbandry_tactical_fishing
advancement grant @a[predicate=map:player/team/b] only minecraft:husbandry/tactical_fishing
tellraw @a[predicate=map:player/team/b] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.tactical_fishing.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.tactical_fishing.title"},{"translate":"advancements.husbandry.tactical_fishing.description"}]}]}}]}]}]
