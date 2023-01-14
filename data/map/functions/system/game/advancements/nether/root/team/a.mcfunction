########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/a] AD_Nether_root 1
scoreboard players operation #map_team_a AD_Nether_root = #map AD_Nether_root
scoreboard players add #map_team_a HasAdvancements 1
scoreboard players operation #map_team_a Points += #map AD_Nether_root
advancement grant @a[predicate=map:player/team/a] only minecraft:nether/root
tellraw @a[predicate=map:player/team/a] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.root.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.root.title"},{"translate":"advancements.nether.root.description"}]}]}}]}]}]
