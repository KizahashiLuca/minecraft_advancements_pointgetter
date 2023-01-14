########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## explode minecart
playsound minecraft:entity.firework_rocket.twinkle ambient @a
particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 10 force @a
kill @s

## Set scoreboard
scoreboard players operation @e[predicate=map:marker/minecart/not_say_next_minecart] Minute = #map Minute
scoreboard players operation @e[predicate=map:marker/minecart/not_say_next_minecart] Minute -= #map CartInterval
scoreboard players operation @e[predicate=map:marker/minecart/not_say_next_minecart] Second = #map Second
scoreboard players set @e[predicate=map:marker/minecart/not_say_next_minecart] Tick 0

## Say next position / decide next time
execute as @e[predicate=map:marker/minecart/not_say_next_minecart] run function map:system/game/minecart/say_next_minecart