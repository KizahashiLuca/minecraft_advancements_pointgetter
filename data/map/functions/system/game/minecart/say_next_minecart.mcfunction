########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send messages
tellraw @a ["",{"translate":"[物資投下] 物資が %s 分後に","with":[{"score":{"name":"#map","objective":"CartInterval"}}],"color":"green","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"text":"320"},{"score":{"name":"@s","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportMinecart set 1"},"color":"green","bold":false,"italic":false},{"text":" に投下されます。","color":"green","bold":false,"italic":false}]

## Remove a tag
tag @s remove MAP_NotSayNextMinecart