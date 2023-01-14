########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set game
function map:system/fall/set_game/main

## Send title messages
title @a title ["",{"text":"降下開始","color":"white","bold":false,"italic":false}]
title @a subtitle [""]
title @a times 20 80 20

## Send setting messages
function map:system/common/message/begin
tellraw @a ["",{"text":"  降下を開始します。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"------------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  中心座標 : ","color":"white","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"#map","objective":"PosX"}},{"score":{"name":"#map","objective":"PosY"}},{"score":{"name":"#map","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportCenter set 1"},"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  制限時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 分","with":[{"score":{"name":"#map","objective":"TimeLimit"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  物資投下間隔 : ","color":"white","bold":false,"italic":false},{"translate":"%s 分","with":[{"score":{"name":"#map","objective":"CartInterval"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/world_border/unlimited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"text":"制限なし","color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/world_border/limited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"translate":"%s x %s","with":[{"score":{"name":"#map","objective":"WorldBorder"}},{"score":{"name":"#map","objective":"WorldBorder"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  デスからリスポーンまでの時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 分","with":[{"score":{"name":"#map","objective":"DeathPenaltyTime"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"------------------------------------","color":"white","bold":false,"italic":false}]
function map:system/wait/set_advancements/send_messages
function map:system/common/message/end

## Teleport
execute at @e[predicate=map:marker/world_spawn,limit=1] run function map:system/fall/random_teleport/main
execute as @a[predicate=map:player/participant] at @s run tp @s ~ 320 ~

## Change phase
scoreboard players set #map Phase 20