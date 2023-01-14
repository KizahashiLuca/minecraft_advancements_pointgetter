########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport
execute if predicate map:gamerules/world_border/0600 run spreadplayers ~ ~ 0 300 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0700 run spreadplayers ~ ~ 0 350 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0800 run spreadplayers ~ ~ 0 400 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0900 run spreadplayers ~ ~ 0 450 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/1000 run spreadplayers ~ ~ 0 500 true @a[predicate=map:player/participant]