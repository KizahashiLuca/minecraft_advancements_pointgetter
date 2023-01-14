########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add 100secs
scoreboard players add #map CartInterval 100
execute if predicate map:system/begin/gui/minecart_interval/ge_thousand run scoreboard players remove #map CartInterval 1000
function map:system/begin/gui/minecart_interval/change_to