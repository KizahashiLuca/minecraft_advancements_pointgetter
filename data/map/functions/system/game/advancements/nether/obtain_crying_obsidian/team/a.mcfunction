########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/a] AD_Nether_obtain_crying_obsidian 1
scoreboard players operation #map_team_a AD_Nether_obtain_crying_obsidian = #map AD_Nether_obtain_crying_obsidian
scoreboard players add #map_team_a HasAdvancements 1
scoreboard players operation #map_team_a Points += #map AD_Nether_obtain_crying_obsidian
advancement grant @a[predicate=map:player/team/a] only minecraft:nether/obtain_crying_obsidian
tellraw @a[predicate=map:player/team/a] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.obtain_crying_obsidian.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.obtain_crying_obsidian.title"},{"translate":"advancements.nether.obtain_crying_obsidian.description"}]}]}}]}]}]
