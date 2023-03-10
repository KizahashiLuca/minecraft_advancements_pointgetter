########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send gamerules messages
tellraw @a[predicate=map:gamerules/weather_cycle/false] ["",{"translate":"[天候サイクル] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/weather_cycle/true] ["",{"translate":"[天候サイクル] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=map:gamerules/daylight_cycle/false] ["",{"translate":"[昼夜サイクル] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/daylight_cycle/true] ["",{"translate":"[昼夜サイクル] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=map:gamerules/difficulty/peaceful] ["",{"translate":"[難易度] %s","with":[{"text":"ピースフル","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/difficulty/easy] ["",{"translate":"[難易度] %s","with":[{"text":"イージー","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/difficulty/normal] ["",{"translate":"[難易度] %s","with":[{"text":"ノーマル","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/difficulty/hard] ["",{"translate":"[難易度] %s","with":[{"text":"ハード","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/difficulty/hardcore] ["",{"translate":"[難易度] %s","with":[{"text":"ハードコア","bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function map:system/begin/gui/root/change_to