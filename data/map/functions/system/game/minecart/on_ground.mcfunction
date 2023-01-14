########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect landing
execute as @e[predicate=map:marker/minecart/summoned_minecart,sort=nearest,limit=1] run function map:system/game/minecart/detect_minecart_landed

## Detect minecart
execute store success score @s HasLootTable run data get entity @s LootTable
execute as @s[predicate=map:minecart/chest_minecart_exist] run function map:system/game/minecart/explode_minecart