########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect version
execute store result score #map DataVersion run data get entity @p DataVersion
execute if predicate map:version/1.13 run scoreboard players set #map Version 13
execute if predicate map:version/1.14 run scoreboard players set #map Version 14
execute if predicate map:version/1.15 run scoreboard players set #map Version 15
execute if predicate map:version/1.16 run scoreboard players set #map Version 16
execute if predicate map:version/1.17 run scoreboard players set #map Version 17
execute if predicate map:version/1.18 run scoreboard players set #map Version 18
execute if predicate map:version/1.19 run scoreboard players set #map Version 19
execute if predicate map:version/1.19.3 run scoreboard players set #map Version 193