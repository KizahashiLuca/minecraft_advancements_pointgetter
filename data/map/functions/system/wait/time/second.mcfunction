########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Calculate time
scoreboard players remove #map Second 1
execute if predicate map:system/wait/time/second/lt_zero run scoreboard players set #map Second 59

## Send title message
function map:system/wait/time/title

## Send gamerules
function map:system/wait/time/gamerules/main

## Process the sound system
execute as @a[predicate=map:system/wait/time/second/yellow_gage] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a[predicate=map:system/wait/time/second/red_gage] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a[predicate=map:system/wait/time/second/eq_zero] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1