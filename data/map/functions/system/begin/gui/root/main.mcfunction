########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/root/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/root/time_limit] run function map:system/begin/gui/time_limit/change_to
execute as @p[predicate=map:system/begin/gui/root/minecart_interval] run function map:system/begin/gui/minecart_interval/change_to
execute as @p[predicate=map:system/begin/gui/root/gamerules] run function map:system/begin/gui/gamerules/change_to
execute as @p[predicate=map:system/begin/gui/root/world_border] run function map:system/begin/gui/world_border/change_to
execute as @p[predicate=map:system/begin/gui/root/team_match] run function map:system/begin/gui/team_match/change_to

execute as @p[predicate=map:system/begin/gui/root/cancel_game] run function map:system/begin/gui/root/cancel_game
execute as @p[predicate=map:system/begin/gui/root/start_game] run function map:system/begin/gui/root/start_game