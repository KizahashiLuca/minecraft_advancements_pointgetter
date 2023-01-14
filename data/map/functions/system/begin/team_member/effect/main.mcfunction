########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Effect
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 positioned ~7 ~1 ~7 run function map:system/begin/team_member/effect/team_a
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 positioned ~-7 ~1 ~-7 run function map:system/begin/team_member/effect/team_b
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 positioned ~7 ~1 ~-7 run function map:system/begin/team_member/effect/team_c
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 positioned ~-7 ~1 ~7 run function map:system/begin/team_member/effect/team_d
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 positioned ~7 ~1 ~0 run function map:system/begin/team_member/effect/team_e