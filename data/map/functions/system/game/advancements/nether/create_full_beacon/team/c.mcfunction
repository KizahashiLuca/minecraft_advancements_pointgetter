########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/c] AD_Nether_create_full_beacon 1
scoreboard players operation #map_team_c AD_Nether_create_full_beacon = #map AD_Nether_create_full_beacon
scoreboard players add #map_team_c HasAdvancements 1
scoreboard players operation #map_team_c Points += #map AD_Nether_create_full_beacon
advancement grant @a[predicate=map:player/team/c] only minecraft:nether/create_full_beacon
tellraw @a[predicate=map:player/team/c] ["",{"translate":"chat.type.advancement.goal","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.create_full_beacon.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.create_full_beacon.title"},{"translate":"advancements.nether.create_full_beacon.description"}]}]}}]}]}]