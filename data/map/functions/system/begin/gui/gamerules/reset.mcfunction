########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Reset choice
scoreboard players set #map WeatherCycle 1
scoreboard players set #map DaylightCycle 1
scoreboard players set #map Difficulty 2

## Send messages
function map:system/begin/gui/gamerules/change_to