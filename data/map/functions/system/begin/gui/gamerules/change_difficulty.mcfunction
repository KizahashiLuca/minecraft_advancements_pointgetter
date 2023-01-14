########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change difficulty
scoreboard players add #map Difficulty 1
execute if score #map Difficulty matches 4.. run scoreboard players set #map Difficulty 1
function map:system/begin/gui/gamerules/change_to