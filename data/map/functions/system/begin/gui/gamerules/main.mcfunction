########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/gamerules/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/gamerules/master] run function map:system/begin/gui/gamerules/change_to
execute as @p[predicate=map:system/begin/gui/gamerules/weather_cycle] run function map:system/begin/gui/gamerules/change_weather_cycle
execute as @p[predicate=map:system/begin/gui/gamerules/daylight_cycle] run function map:system/begin/gui/gamerules/change_daylight_cycle
execute as @p[predicate=map:system/begin/gui/gamerules/difficulty] run function map:system/begin/gui/gamerules/change_difficulty
execute as @p[predicate=map:system/begin/gui/gamerules/cancel] run function map:system/begin/gui/gamerules/cancel
execute as @p[predicate=map:system/begin/gui/gamerules/reset] run function map:system/begin/gui/gamerules/reset
execute as @p[predicate=map:system/begin/gui/gamerules/ok] run function map:system/begin/gui/gamerules/ok