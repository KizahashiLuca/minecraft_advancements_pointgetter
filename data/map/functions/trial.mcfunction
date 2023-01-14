########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect Gamemode
execute if entity @p[predicate=map:player/host] run function map:system/trial/set_trial/reject
execute unless entity @p[predicate=map:player/host] run function map:system/trial/set_trial/main