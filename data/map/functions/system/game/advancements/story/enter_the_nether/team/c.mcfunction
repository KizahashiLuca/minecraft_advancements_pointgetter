########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/c] AD_Story_enter_the_nether 1
scoreboard players operation #map_team_c AD_Story_enter_the_nether = #map AD_Story_enter_the_nether
scoreboard players add #map_team_c HasAdvancements 1
scoreboard players operation #map_team_c Points += #map AD_Story_enter_the_nether
advancement grant @a[predicate=map:player/team/c] only minecraft:story/enter_the_nether
tellraw @a[predicate=map:player/team/c] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.enter_the_nether.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.enter_the_nether.title"},{"translate":"advancements.story.enter_the_nether.description"}]}]}}]}]}]
