########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/b] AD_Adventure_kill_all_mobs 1
scoreboard players operation #map_team_b AD_Adventure_kill_all_mobs = #map AD_Adventure_kill_all_mobs
scoreboard players add #map_team_b HasAdvancements 1
scoreboard players operation #map_team_b Points += #map AD_Adventure_kill_all_mobs
advancement grant @a[predicate=map:player/team/b] only minecraft:adventure/kill_all_mobs
tellraw @a[predicate=map:player/team/b] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.kill_all_mobs.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.kill_all_mobs.title"},{"translate":"advancements.adventure.kill_all_mobs.description"}]}]}}]}]}]
