########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Title
title @a times 20 80 20
execute if predicate map:gamerules/match_mode/individual if entity @p[predicate=map:player/alive] run function map:system/finish/winner/individual
execute if predicate map:gamerules/match_mode/team if entity @p[predicate=map:player/alive/a] run function map:system/finish/winner/a
execute if predicate map:gamerules/match_mode/team if entity @p[predicate=map:player/alive/b] run function map:system/finish/winner/b
execute if predicate map:gamerules/match_mode/team if entity @p[predicate=map:player/alive/c] run function map:system/finish/winner/c
execute if predicate map:gamerules/match_mode/team if entity @p[predicate=map:player/alive/d] run function map:system/finish/winner/d
execute if predicate map:gamerules/match_mode/team if entity @p[predicate=map:player/alive/e] run function map:system/finish/winner/e