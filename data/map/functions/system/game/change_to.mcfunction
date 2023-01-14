########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set games
function map:system/game/set_game/main

## Set spawnpoint
execute as @a[predicate=map:player/participant] at @s run spawnpoint @s ~ ~ ~

## Decide where to summon minecart
execute if predicate map:gamerules/number_of_minecarts/ge_1 run function map:system/game/minecart/where_summon_minecart

## Set scoreboard
scoreboard players operation @e[predicate=map:marker/minecart/not_say_next_minecart] Minute = #map Minute
scoreboard players operation @e[predicate=map:marker/minecart/not_say_next_minecart] Minute -= #map CartInterval
scoreboard players operation @e[predicate=map:marker/minecart/not_say_next_minecart] Second = #map Second
scoreboard players set @e[predicate=map:marker/minecart/not_say_next_minecart] Tick 0

## Say next position
#execute as @e[predicate=map:marker/minecart/not_say_next_minecart] run function map:system/game/minecart/say_next_minecart
tag @e[predicate=map:marker/minecart/not_say_next_minecart] remove MAP_NotSayNextMinecart

## Change phase
scoreboard players set #map Phase 21