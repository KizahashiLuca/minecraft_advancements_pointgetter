########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/c] AD_Adventure_hero_of_the_village 1
scoreboard players operation #map_team_c AD_Adventure_hero_of_the_village = #map AD_Adventure_hero_of_the_village
scoreboard players add #map_team_c HasAdvancements 1
scoreboard players operation #map_team_c Points += #map AD_Adventure_hero_of_the_village
advancement grant @a[predicate=map:player/team/c] only minecraft:adventure/hero_of_the_village
tellraw @a[predicate=map:player/team/c] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.hero_of_the_village.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.hero_of_the_village.title"},{"translate":"advancements.adventure.hero_of_the_village.description"}]}]}}]}]}]
