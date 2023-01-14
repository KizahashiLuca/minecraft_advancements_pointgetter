########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/a] AD_Nether_return_to_sender 1
scoreboard players operation #map_team_a AD_Nether_return_to_sender = #map AD_Nether_return_to_sender
scoreboard players add #map_team_a HasAdvancements 1
scoreboard players operation #map_team_a Points += #map AD_Nether_return_to_sender
advancement grant @a[predicate=map:player/team/a] only minecraft:nether/return_to_sender
tellraw @a[predicate=map:player/team/a] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.nether.return_to_sender.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.nether.return_to_sender.title"},{"translate":"advancements.nether.return_to_sender.description"}]}]}}]}]}]
