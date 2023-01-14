########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change weather cycle
scoreboard players add #map WeatherCycle 1
execute if score #map WeatherCycle matches 2.. run scoreboard players set #map WeatherCycle 0
function map:system/begin/gui/gamerules/change_to