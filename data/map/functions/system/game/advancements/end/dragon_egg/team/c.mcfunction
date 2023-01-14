########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/c] AD_End_dragon_egg 1
scoreboard players operation #map_team_c AD_End_dragon_egg = #map AD_End_dragon_egg
scoreboard players add #map_team_c HasAdvancements 1
scoreboard players operation #map_team_c Points += #map AD_End_dragon_egg
advancement grant @a[predicate=map:player/team/c] only minecraft:end/dragon_egg
tellraw @a[predicate=map:player/team/c] ["",{"translate":"chat.type.advancement.goal","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.end.dragon_egg.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.end.dragon_egg.title"},{"translate":"advancements.end.dragon_egg.description"}]}]}}]}]}]
