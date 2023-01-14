########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/world_border/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/world_border/master] run function map:system/begin/gui/world_border/change_to
execute as @p[predicate=map:system/begin/gui/world_border/digit_1000] run function map:system/begin/gui/world_border/add_1000
execute as @p[predicate=map:system/begin/gui/world_border/digit_0100] run function map:system/begin/gui/world_border/add_0100
execute as @p[predicate=map:system/begin/gui/world_border/digit_0010] run function map:system/begin/gui/world_border/add_0010
execute as @p[predicate=map:system/begin/gui/world_border/digit_0001] run function map:system/begin/gui/world_border/add_0001
execute as @p[predicate=map:system/begin/gui/world_border/center] run function map:system/begin/gui/world_border/center
execute as @p[predicate=map:system/begin/gui/world_border/cancel] run function map:system/begin/gui/world_border/cancel
execute as @p[predicate=map:system/begin/gui/world_border/default] run function map:system/begin/gui/world_border/default
execute as @p[predicate=map:system/begin/gui/world_border/reset] run function map:system/begin/gui/world_border/reset
execute as @p[predicate=map:system/begin/gui/world_border/ok] run function map:system/begin/gui/world_border/ok