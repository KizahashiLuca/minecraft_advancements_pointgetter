########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add 10secs
scoreboard players add #map TimeLimit 10
execute if predicate map:system/begin/gui/time_limit/ge_thousand run scoreboard players remove #map TimeLimit 1000
function map:system/begin/gui/time_limit/change_to