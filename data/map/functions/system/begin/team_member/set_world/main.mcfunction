########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set world
worldborder set 32 0

## Teleport
tp @a 0.5 312.5 0.5 0 0

## Set block
execute positioned 0.5 310 0.5 run function map:system/begin/team_member/set_world/set_block

## Effect
function map:system/begin/team_member/effect/main