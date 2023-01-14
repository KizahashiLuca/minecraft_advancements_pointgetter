########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/b] AD_Adventure_arbalistic 1
scoreboard players operation #map_team_b AD_Adventure_arbalistic = #map AD_Adventure_arbalistic
scoreboard players add #map_team_b HasAdvancements 1
scoreboard players operation #map_team_b Points += #map AD_Adventure_arbalistic
advancement grant @a[predicate=map:player/team/b] only minecraft:adventure/arbalistic
tellraw @a[predicate=map:player/team/b] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.arbalistic.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.arbalistic.title"},{"translate":"advancements.adventure.arbalistic.description"}]}]}}]}]}]
