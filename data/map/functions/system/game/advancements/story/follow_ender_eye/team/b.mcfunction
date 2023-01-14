########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @a[predicate=map:player/team/b] AD_Story_follow_ender_eye 1
scoreboard players operation #map_team_b AD_Story_follow_ender_eye = #map AD_Story_follow_ender_eye
scoreboard players add #map_team_b HasAdvancements 1
scoreboard players operation #map_team_b Points += #map AD_Story_follow_ender_eye
advancement grant @a[predicate=map:player/team/b] only minecraft:story/follow_ender_eye
tellraw @a[predicate=map:player/team/b] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.follow_ender_eye.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.follow_ender_eye.title"},{"translate":"advancements.story.follow_ender_eye.description"}]}]}}]}]}]
