########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/time_limit/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/time_limit/master] run function map:system/begin/gui/time_limit/change_to
execute as @p[predicate=map:system/begin/gui/time_limit/digit_0100] run function map:system/begin/gui/time_limit/add_0100
execute as @p[predicate=map:system/begin/gui/time_limit/digit_0010] run function map:system/begin/gui/time_limit/add_0010
execute as @p[predicate=map:system/begin/gui/time_limit/digit_0001] run function map:system/begin/gui/time_limit/add_0001
execute as @p[predicate=map:system/begin/gui/time_limit/minute] run function map:system/begin/gui/time_limit/change_to
execute as @p[predicate=map:system/begin/gui/time_limit/cancel] run function map:system/begin/gui/time_limit/cancel
execute as @p[predicate=map:system/begin/gui/time_limit/default] run function map:system/begin/gui/time_limit/default
execute as @p[predicate=map:system/begin/gui/time_limit/reset] run function map:system/begin/gui/time_limit/reset
execute as @p[predicate=map:system/begin/gui/time_limit/ok] run function map:system/begin/gui/time_limit/ok