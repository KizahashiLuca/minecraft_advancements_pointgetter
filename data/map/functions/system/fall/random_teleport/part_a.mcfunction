########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport
execute if predicate map:gamerules/world_border/0100 run spreadplayers ~ ~ 0 50 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0200 run spreadplayers ~ ~ 0 100 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0300 run spreadplayers ~ ~ 0 150 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0400 run spreadplayers ~ ~ 0 200 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/0500 run spreadplayers ~ ~ 0 250 true @a[predicate=map:player/participant]