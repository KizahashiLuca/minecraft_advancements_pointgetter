########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send match mode
execute if predicate map:gamerules/num_of_participants/one run scoreboard players reset マッチモード：ソロ戦 Sidebar
execute if predicate map:gamerules/num_of_participants/not_one run scoreboard players reset マッチモード：チーム戦 Sidebar
scoreboard players operation 制限時間（分）： Sidebar = #map TimeLimit