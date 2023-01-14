########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/d] AD_Husbandry_ride_a_boat_with_a_goat 1
scoreboard players operation #map_team_d AD_Husbandry_ride_a_boat_with_a_goat = #map AD_Husbandry_ride_a_boat_with_a_goat
scoreboard players add #map_team_d HasAdvancements 1
scoreboard players operation #map_team_d Points += #map AD_Husbandry_ride_a_boat_with_a_goat
advancement grant @a[predicate=map:player/team/d] only minecraft:husbandry/ride_a_boat_with_a_goat
tellraw @a[predicate=map:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.ride_a_boat_with_a_goat.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.ride_a_boat_with_a_goat.title"},{"translate":"advancements.husbandry.ride_a_boat_with_a_goat.description"}]}]}}]}]}]
