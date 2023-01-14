########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/d] AD_Adventure_hero_of_the_village 1
scoreboard players operation #map_team_d AD_Adventure_hero_of_the_village = #map AD_Adventure_hero_of_the_village
scoreboard players add #map_team_d HasAdvancements 1
scoreboard players operation #map_team_d Points += #map AD_Adventure_hero_of_the_village
advancement grant @a[predicate=map:player/team/d] only minecraft:adventure/hero_of_the_village
tellraw @a[predicate=map:player/team/d] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.hero_of_the_village.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.hero_of_the_village.title"},{"translate":"advancements.adventure.hero_of_the_village.description"}]}]}}]}]}]
