########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/minecart_interval/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/minecart_interval/master] run function map:system/begin/gui/minecart_interval/change_to
execute as @p[predicate=map:system/begin/gui/minecart_interval/digit_0100] run function map:system/begin/gui/minecart_interval/add_0100
execute as @p[predicate=map:system/begin/gui/minecart_interval/digit_0010] run function map:system/begin/gui/minecart_interval/add_0010
execute as @p[predicate=map:system/begin/gui/minecart_interval/digit_0001] run function map:system/begin/gui/minecart_interval/add_0001
execute as @p[predicate=map:system/begin/gui/minecart_interval/minute] run function map:system/begin/gui/minecart_interval/change_to
execute as @p[predicate=map:system/begin/gui/minecart_interval/cancel] run function map:system/begin/gui/minecart_interval/cancel
execute as @p[predicate=map:system/begin/gui/minecart_interval/default] run function map:system/begin/gui/minecart_interval/default
execute as @p[predicate=map:system/begin/gui/minecart_interval/reset] run function map:system/begin/gui/minecart_interval/reset
execute as @p[predicate=map:system/begin/gui/minecart_interval/ok] run function map:system/begin/gui/minecart_interval/ok