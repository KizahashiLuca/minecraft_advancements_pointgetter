########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send match mode
execute if predicate map:gamerules/weather_cycle/false run scoreboard players reset 天候サイクル：なし Sidebar
execute if predicate map:gamerules/weather_cycle/true run scoreboard players reset 天候サイクル：あり Sidebar
execute if predicate map:gamerules/daylight_cycle/false run scoreboard players set 昼夜サイクル：なし Sidebar 0
execute if predicate map:gamerules/daylight_cycle/true run scoreboard players set 昼夜サイクル：あり Sidebar 1