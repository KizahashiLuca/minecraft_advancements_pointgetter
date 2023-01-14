########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/d] AD_Husbandry_kill_axolotl_target 1
scoreboard players operation #map_team_d AD_Husbandry_kill_axolotl_target = #map AD_Husbandry_kill_axolotl_target
scoreboard players add #map_team_d HasAdvancements 1
scoreboard players operation #map_team_d Points += #map AD_Husbandry_kill_axolotl_target
advancement grant @a[predicate=map:player/team/d] only minecraft:husbandry/kill_axolotl_target
tellraw @a[predicate=map:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.kill_axolotl_target.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.kill_axolotl_target.title"},{"translate":"advancements.husbandry.kill_axolotl_target.description"}]}]}}]}]}]
