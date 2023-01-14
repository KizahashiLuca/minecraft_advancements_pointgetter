########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change daylight cycle
scoreboard players add #map DaylightCycle 1
execute if score #map DaylightCycle matches 2.. run scoreboard players set #map DaylightCycle 0
function map:system/begin/gui/gamerules/change_to