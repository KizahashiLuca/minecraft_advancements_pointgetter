########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Teleport between dimensions
tp @s @p[predicate=map:player/alive/e,sort=nearest]

## Spectate
spectate @p[predicate=map:player/alive/e,sort=nearest] @s

## Team is dead
execute unless entity @p[predicate=map:player/alive/e] as @a[predicate=map:player/team/e] run spectate @e[predicate=map:armor_stand/center_stand,limit=1] @s