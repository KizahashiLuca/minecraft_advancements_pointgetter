########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/d] AD_Adventure_honey_block_slide 1
scoreboard players operation #map_team_d AD_Adventure_honey_block_slide = #map AD_Adventure_honey_block_slide
scoreboard players add #map_team_d HasAdvancements 1
scoreboard players operation #map_team_d Points += #map AD_Adventure_honey_block_slide
advancement grant @a[predicate=map:player/team/d] only minecraft:adventure/honey_block_slide
tellraw @a[predicate=map:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.honey_block_slide.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.honey_block_slide.title"},{"translate":"advancements.adventure.honey_block_slide.description"}]}]}}]}]}]
