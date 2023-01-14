########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/e] AD_Story_iron_tools 1
scoreboard players operation #map_team_e AD_Story_iron_tools = #map AD_Story_iron_tools
scoreboard players add #map_team_e HasAdvancements 1
scoreboard players operation #map_team_e Points += #map AD_Story_iron_tools
advancement grant @a[predicate=map:player/team/e] only minecraft:story/iron_tools
tellraw @a[predicate=map:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.iron_tools.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.iron_tools.title"},{"translate":"advancements.story.iron_tools.description"}]}]}}]}]}]