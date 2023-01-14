########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Recount
scoreboard players remove #map RandomCount 1

## Randomize
scoreboard players operation #map RandomSeed *= #map RandomMultiplier
scoreboard players operation #map RandomSeed %= #map RandomModder
scoreboard players operation #map RandomAnswer = #map RandomSeed
scoreboard players operation #map RandomAnswer %= #map AdvancementsCount

## Loop
execute if predicate map:system/common/randomizer/gt_zero run function map:system/common/randomizer/randomize