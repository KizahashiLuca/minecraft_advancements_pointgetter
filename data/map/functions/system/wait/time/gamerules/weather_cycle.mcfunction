########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send match mode
scoreboard players reset ワールドボーダー Sidebar
scoreboard players reset （ブロック四方）： Sidebar
execute if predicate map:gamerules/weather_cycle/false run scoreboard players set 天候サイクル：なし Sidebar 0
execute if predicate map:gamerules/weather_cycle/true run scoreboard players set 天候サイクル：あり Sidebar 1