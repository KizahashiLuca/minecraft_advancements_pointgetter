########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/e] AD_Adventure_spyglass_at_ghast 1
scoreboard players operation #map_team_e AD_Adventure_spyglass_at_ghast = #map AD_Adventure_spyglass_at_ghast
scoreboard players add #map_team_e HasAdvancements 1
scoreboard players operation #map_team_e Points += #map AD_Adventure_spyglass_at_ghast
advancement grant @a[predicate=map:player/team/e] only minecraft:adventure/spyglass_at_ghast
tellraw @a[predicate=map:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.adventure.spyglass_at_ghast.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.adventure.spyglass_at_ghast.title"},{"translate":"advancements.adventure.spyglass_at_ghast.description"}]}]}}]}]}]
