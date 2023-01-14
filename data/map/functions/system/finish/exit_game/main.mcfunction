########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send exit messages
function map:system/finish/exit_game/messages

execute if predicate map:system/finish/exit_game/winner/one run function map:system/finish/winner/one
execute if predicate map:system/finish/exit_game/winner/draw run function map:system/finish/winner/none
execute if predicate map:system/finish/exit_game/winner/detect run function map:system/finish/winner/detect

## Statics
function map:system/finish/statics

## Reset game
function map:system/finish/reset_game/main
