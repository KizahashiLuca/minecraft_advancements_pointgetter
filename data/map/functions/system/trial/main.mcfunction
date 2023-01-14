########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
execute as @a[predicate=map:system/trial/login_midtime] run function map:system/common/login_midtime

## Position
function map:system/common/set_position/main

## Give item
execute as @a[predicate=map:system/trial/use_item] run function map:system/trial/supply_item

## Reset scoreboard
scoreboard players set @a Death 0