########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/e] AD_End_enter_end_gateway 1
scoreboard players operation #map_team_e AD_End_enter_end_gateway = #map AD_End_enter_end_gateway
scoreboard players add #map_team_e HasAdvancements 1
scoreboard players operation #map_team_e Points += #map AD_End_enter_end_gateway
advancement grant @a[predicate=map:player/team/e] only minecraft:end/enter_end_gateway
tellraw @a[predicate=map:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.end.enter_end_gateway.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.end.enter_end_gateway.title"},{"translate":"advancements.end.enter_end_gateway.description"}]}]}}]}]}]
