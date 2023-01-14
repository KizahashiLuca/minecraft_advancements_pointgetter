########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Spectate
gamemode spectator @a[predicate=map:player/team/d]
execute as @a[predicate=map:player/team/d] run spectate @e[predicate=map:armor_stand/center_stand,limit=1] @s