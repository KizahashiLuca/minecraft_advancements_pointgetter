########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/b] AD_Husbandry_bred_all_animals 1
scoreboard players operation #map_team_b AD_Husbandry_bred_all_animals = #map AD_Husbandry_bred_all_animals
scoreboard players add #map_team_b HasAdvancements 1
scoreboard players operation #map_team_b Points += #map AD_Husbandry_bred_all_animals
advancement grant @a[predicate=map:player/team/b] only minecraft:husbandry/bred_all_animals
tellraw @a[predicate=map:player/team/b] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.husbandry.breed_all_animals.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.husbandry.breed_all_animals.title"},{"translate":"advancements.husbandry.breed_all_animals.description"}]}]}}]}]}]
