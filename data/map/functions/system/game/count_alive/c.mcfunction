########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Spectate
execute as @a[predicate=map:player/dead/c] at @s run function map:system/game/spectate_player/c

## Detect team end
execute unless entity @p[predicate=map:player/alive/c] run function map:system/game/set_team_dead/c