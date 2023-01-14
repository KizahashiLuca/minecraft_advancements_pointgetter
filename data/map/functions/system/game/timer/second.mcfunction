########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Calculate time every minute
execute if predicate map:system/game/timer/second/eq_zero run function map:system/game/timer/minute

## Calculate time every second
scoreboard players remove #map Second 1
execute if predicate map:system/game/timer/second/lt_zero run scoreboard players set #map Second 59

## Bossbar
scoreboard players set #map TotalSecond 60
scoreboard players operation #map TotalSecond *= #map Minute
scoreboard players operation #map TotalSecond += #map Second
execute store result bossbar minecraft:bossbar value run scoreboard players get #map TotalSecond
bossbar set minecraft:bossbar name ["",{"translate":"ゲームフェーズ - 制限時間 %s分 %s秒","with":[{"score":{"name":"#map","objective":"Minute"}},{"score":{"name":"#map","objective":"Second"}}],"color":"white","bold":false,"italic":false}]

## Respawn
execute as @a[predicate=map:system/game/respawn/eq_time] run function map:system/game/respawn/main

## Playsound
execute if predicate map:system/game/timer/from_4_to_10 as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if predicate map:system/game/timer/from_1_to_3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if predicate map:system/game/timer/eq_zero as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1