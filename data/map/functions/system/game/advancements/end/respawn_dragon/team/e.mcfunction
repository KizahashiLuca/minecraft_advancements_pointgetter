########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/e] AD_End_respawn_dragon 1
scoreboard players operation #map_team_e AD_End_respawn_dragon = #map AD_End_respawn_dragon
scoreboard players add #map_team_e HasAdvancements 1
scoreboard players operation #map_team_e Points += #map AD_End_respawn_dragon
advancement grant @a[predicate=map:player/team/e] only minecraft:end/respawn_dragon
tellraw @a[predicate=map:player/team/e] ["",{"translate":"chat.type.advancement.goal","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.end.respawn_dragon.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.end.respawn_dragon.title"},{"translate":"advancements.end.respawn_dragon.description"}]}]}}]}]}]