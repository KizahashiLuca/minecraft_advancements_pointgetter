########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboard
scoreboard players set @s TeleportMinecart 0
scoreboard players enable @s TeleportMinecart

## Teleport to minecart
execute if entity @e[predicate=map:minecart/minecart] at @e[predicate=map:minecart/minecart,limit=1] run tp @s[predicate=map:system/common/teleport/player] ~ ~ ~
execute unless entity @e[predicate=map:minecart/minecart] at @e[predicate=map:marker/minecart/where_summon_minecart,limit=1] run tp @s[predicate=map:system/common/teleport/player] ~ ~ ~