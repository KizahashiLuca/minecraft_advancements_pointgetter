########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/e] AD_Adventure_ol_betsy 1
scoreboard players operation #map_team_e AD_Adventure_ol_betsy = #map AD_Adventure_ol_betsy
scoreboard players add #map_team_e HasAdvancements 1
scoreboard players operation #map_team_e Points += #map AD_Adventure_ol_betsy
advancement grant @a[predicate=map:player/team/e] only minecraft:adventure/ol_betsy
tellraw @a[predicate=map:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.ol_betsy.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.ol_betsy.title"},{"translate":"advancements.adventure.ol_betsy.description"}]}]}}]}]}]
