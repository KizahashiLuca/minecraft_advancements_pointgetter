########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/a] AD_Adventure_throw_trident 1
scoreboard players operation #map_team_a AD_Adventure_throw_trident = #map AD_Adventure_throw_trident
scoreboard players add #map_team_a HasAdvancements 1
scoreboard players operation #map_team_a Points += #map AD_Adventure_throw_trident
advancement grant @a[predicate=map:player/team/a] only minecraft:adventure/throw_trident
tellraw @a[predicate=map:player/team/a] ["",{"translate":"chat.type.advancement.task","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.throw_trident.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.throw_trident.title"},{"translate":"advancements.adventure.throw_trident.description"}]}]}}]}]}]
