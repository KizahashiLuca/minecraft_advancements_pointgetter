########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/d] AD_Adventure_root 1
scoreboard players operation #map_team_d AD_Adventure_root = #map AD_Adventure_root
scoreboard players add #map_team_d HasAdvancements 1
scoreboard players operation #map_team_d Points += #map AD_Adventure_root
advancement grant @a[predicate=map:player/team/d] only minecraft:adventure/root
tellraw @a[predicate=map:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.root.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.root.title"},{"translate":"advancements.adventure.root.description"}]}]}}]}]}]
