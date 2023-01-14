########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send match mode
execute if predicate map:gamerules/daylight_cycle/false run scoreboard players reset 昼夜サイクル：なし Sidebar
execute if predicate map:gamerules/daylight_cycle/true run scoreboard players reset 昼夜サイクル：あり Sidebar
execute if predicate map:gamerules/difficulty/peaceful run scoreboard players set 難易度：ピースフル Sidebar 0
execute if predicate map:gamerules/difficulty/easy run scoreboard players set 難易度：イージー Sidebar 1
execute if predicate map:gamerules/difficulty/normal run scoreboard players set 難易度：ノーマル Sidebar 2
execute if predicate map:gamerules/difficulty/hard run scoreboard players set 難易度：ハード Sidebar 3
execute if predicate map:gamerules/difficulty/hardcore run scoreboard players set 難易度：ハードコア Sidebar 4