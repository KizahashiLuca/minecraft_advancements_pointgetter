########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send gamerules
execute if predicate map:system/wait/time/gamerules/match_mode run function map:system/wait/time/gamerules/match_mode
execute if predicate map:system/wait/time/gamerules/time_limit run function map:system/wait/time/gamerules/time_limit
execute if predicate map:system/wait/time/gamerules/minecart_interval run function map:system/wait/time/gamerules/minecart_interval
execute if predicate map:system/wait/time/gamerules/world_border run function map:system/wait/time/gamerules/world_border
execute if predicate map:system/wait/time/gamerules/weather_cycle run function map:system/wait/time/gamerules/weather_cycle
execute if predicate map:system/wait/time/gamerules/daylight_cycle run function map:system/wait/time/gamerules/daylight_cycle
execute if predicate map:system/wait/time/gamerules/difficulty run function map:system/wait/time/gamerules/difficulty
execute if predicate map:system/wait/time/gamerules/death_penalty_time run function map:system/wait/time/gamerules/death_penalty_time
execute if predicate map:system/wait/time/gamerules/reset run function map:system/wait/time/gamerules/reset