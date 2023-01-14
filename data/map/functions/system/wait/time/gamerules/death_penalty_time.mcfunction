########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send match mode
execute if predicate map:gamerules/difficulty/peaceful run scoreboard players reset 難易度：ピースフル Sidebar
execute if predicate map:gamerules/difficulty/easy run scoreboard players reset 難易度：イージー Sidebar
execute if predicate map:gamerules/difficulty/normal run scoreboard players reset 難易度：ノーマル Sidebar
execute if predicate map:gamerules/difficulty/hard run scoreboard players reset 難易度：ハード Sidebar
execute if predicate map:gamerules/difficulty/hardcore run scoreboard players reset 難易度：ハードコア Sidebar
execute if predicate map:gamerules/num_of_participants/not_one run scoreboard players operation デスからリスポーンまでの時間（分）： Sidebar = #map DeathPenaltyTime