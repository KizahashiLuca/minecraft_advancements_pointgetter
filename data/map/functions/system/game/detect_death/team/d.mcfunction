########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Death message
execute as @s[predicate=map:system/game/detect_death/dimension/overworld] run tellraw @a[predicate=map:player/team/d] ["",{"translate":"%sは %s にて死亡したため、リスポーンまで %s%s 掛かります。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"オーバーワールド"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"},{"score":{"name":"#map","objective":"DeathPenaltyTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=map:system/game/detect_death/dimension/the_nether] run tellraw @a[predicate=map:player/team/d] ["",{"translate":"%sは %s にて死亡したため、リスポーンまで %s%s 掛かります。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"ネザー"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"},{"score":{"name":"#map","objective":"DeathPenaltyTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=map:system/game/detect_death/dimension/the_end] run tellraw @a[predicate=map:player/team/d] ["",{"translate":"%sは %s にて死亡したため、リスポーンまで %s%s 掛かります。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"エンド"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"},{"score":{"name":"#map","objective":"DeathPenaltyTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]

## Spectate player
function map:system/game/spectate_player/d