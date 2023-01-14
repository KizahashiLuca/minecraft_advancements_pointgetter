########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add a tag
tag @s add MAP_SummonedMinecart

## Summon minecart
summon minecraft:chest_minecart ~ 320 ~ {Invulnerable:1b,Tags:["MAP_Minecart"]}
execute if predicate map:gamerules/minecart/one_player_no_end run data modify entity @e[predicate=map:minecart/minecart,limit=1] LootTable set value "map:system/game/minecart/branch/one_player_no_end"
execute if predicate map:gamerules/minecart/one_player_with_end run data modify entity @e[predicate=map:minecart/minecart,limit=1] LootTable set value "map:system/game/minecart/branch/one_player_with_end"
execute if predicate map:gamerules/minecart/individual_no_end run data modify entity @e[predicate=map:minecart/minecart,limit=1] LootTable set value "map:system/game/minecart/branch/individual_no_end"
execute if predicate map:gamerules/minecart/individual_with_end run data modify entity @e[predicate=map:minecart/minecart,limit=1] LootTable set value "map:system/game/minecart/branch/individual_with_end"
execute if predicate map:gamerules/minecart/team_no_end run data modify entity @e[predicate=map:minecart/minecart,limit=1] LootTable set value "map:system/game/minecart/branch/team_no_end"
execute if predicate map:gamerules/minecart/team_with_end run data modify entity @e[predicate=map:minecart/minecart,limit=1] LootTable set value "map:system/game/minecart/branch/team_with_end"

## Send messages
tellraw @a ["",{"text":"[物資投下] 物資が ","color":"green","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"text":"320"},{"score":{"name":"@s","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportMinecart set 1"},"color":"green","bold":false,"italic":false},{"text":" に投下されました。","color":"green","bold":false,"italic":false}]