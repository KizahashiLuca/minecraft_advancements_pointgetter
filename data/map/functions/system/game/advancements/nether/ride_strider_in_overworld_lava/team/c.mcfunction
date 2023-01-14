########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/c] AD_Nether_ride_strider_in_overworld_lava 1
scoreboard players operation #map_team_c AD_Nether_ride_strider_in_overworld_lava = #map AD_Nether_ride_strider_in_overworld_lava
scoreboard players add #map_team_c HasAdvancements 1
scoreboard players operation #map_team_c Points += #map AD_Nether_ride_strider_in_overworld_lava
advancement grant @a[predicate=map:player/team/c] only minecraft:nether/ride_strider_in_overworld_lava
tellraw @a[predicate=map:player/team/c] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.nether.ride_strider_in_overworld_lava.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.nether.ride_strider_in_overworld_lava.title"},{"translate":"advancements.nether.ride_strider_in_overworld_lava.description"}]}]}}]}]}]
