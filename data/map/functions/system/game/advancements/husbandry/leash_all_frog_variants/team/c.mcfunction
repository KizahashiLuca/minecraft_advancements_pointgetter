########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/c] AD_Husbandry_leash_all_frog_variants 1
scoreboard players operation #map_team_c AD_Husbandry_leash_all_frog_variants = #map AD_Husbandry_leash_all_frog_variants
scoreboard players add #map_team_c HasAdvancements 1
scoreboard players operation #map_team_c Points += #map AD_Husbandry_leash_all_frog_variants
advancement grant @a[predicate=map:player/team/c] only minecraft:husbandry/leash_all_frog_variants
tellraw @a[predicate=map:player/team/c] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.leash_all_frog_variants.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.leash_all_frog_variants.title"},{"translate":"advancements.husbandry.leash_all_frog_variants.description"}]}]}}]}]}]
