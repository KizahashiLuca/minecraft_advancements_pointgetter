########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Calculate time every minute
scoreboard players remove #map Minute 1

## Set bossbar color
execute if predicate map:system/game/timer/minute/yellow run bossbar set minecraft:bossbar color yellow
execute if predicate map:system/game/timer/minute/red run bossbar set minecraft:bossbar color red