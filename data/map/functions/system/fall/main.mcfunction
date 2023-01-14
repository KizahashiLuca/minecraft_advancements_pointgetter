########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
execute as @a[predicate=map:system/fall/login_midtime] run function map:system/common/login_midtime

## Position
function map:system/common/set_position/main

## Detect on ground
execute as @a[predicate=map:system/fall/detect_on_ground/not_on_ground] at @s run function map:system/fall/detect_on_ground/main

## Detect on ground
execute as @a[predicate=map:system/fall/detect_on_ground/on_ground] at @s run function map:system/fall/teleport

## Change phase
execute unless entity @p[predicate=map:system/fall/detect_on_ground/not_on_ground] run function map:system/fall/send_message