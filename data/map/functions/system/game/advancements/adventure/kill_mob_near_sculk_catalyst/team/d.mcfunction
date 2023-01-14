########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/d] AD_Adventure_kill_mob_near_sculk_catalyst 1
scoreboard players operation #map_team_d AD_Adventure_kill_mob_near_sculk_catalyst = #map AD_Adventure_kill_mob_near_sculk_catalyst
scoreboard players add #map_team_d HasAdvancements 1
scoreboard players operation #map_team_d Points += #map AD_Adventure_kill_mob_near_sculk_catalyst
advancement grant @a[predicate=map:player/team/d] only minecraft:adventure/kill_mob_near_sculk_catalyst
tellraw @a[predicate=map:player/team/d] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.adventure.kill_mob_near_sculk_catalyst.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.adventure.kill_mob_near_sculk_catalyst.title"},{"translate":"advancements.adventure.kill_mob_near_sculk_catalyst.description"}]}]}}]}]}]