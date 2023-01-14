########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send world border messages
tellraw @a[predicate=map:system/begin/gui/world_border/unlimited] ["",{"translate":"[ワールドボーダー] %s","with":[{"text":"制限なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:system/begin/gui/world_border/limited] ["",{"translate":"[ワールドボーダー] %s%s%s","with":[{"score":{"name":"#map","objective":"WorldBorder"},"bold":true},{"text":"×","bold":true},{"score":{"name":"#map","objective":"WorldBorder"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function map:system/begin/gui/root/change_to