########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Get random value
scoreboard players set #map RandomCount 10
function map:system/common/randomizer/randomize

## Set points
scoreboard players operation #map AD_Adventure_two_birds_one_arrow = #map RandomAnswer

## Set scoreboards
scoreboard players set #map ChooseAdvancements 1
