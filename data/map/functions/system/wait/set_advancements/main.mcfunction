########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboards
scoreboard players set #map ChooseAdvancements 0

## Loop
execute if score #map ChooseAdvancements matches 0 run function map:system/wait/set_advancements/loop