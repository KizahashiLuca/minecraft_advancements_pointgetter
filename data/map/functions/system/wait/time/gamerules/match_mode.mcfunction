########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send match mode
scoreboard objectives setdisplay sidebar Sidebar
execute if predicate map:gamerules/num_of_participants/not_one run scoreboard players reset デスからリスポーンまでの時間（分）： Sidebar
execute if predicate map:gamerules/num_of_participants/one run scoreboard players set マッチモード：ソロ戦 Sidebar 1
execute if predicate map:gamerules/num_of_participants/not_one run scoreboard players operation マッチモード：チーム戦 Sidebar = #map NumberOfTeams