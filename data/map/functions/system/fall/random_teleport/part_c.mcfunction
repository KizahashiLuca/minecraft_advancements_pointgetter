########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport
execute if predicate map:gamerules/world_border/1100 run spreadplayers ~ ~ 0 550 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/1200 run spreadplayers ~ ~ 0 600 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/1300 run spreadplayers ~ ~ 0 650 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/1400 run spreadplayers ~ ~ 0 700 true @a[predicate=map:player/participant]
execute if predicate map:gamerules/world_border/1500 run spreadplayers ~ ~ 0 750 true @a[predicate=map:player/participant]