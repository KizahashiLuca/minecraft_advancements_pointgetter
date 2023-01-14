########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Random member set
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run team join TeamA @p[predicate=map:player/team/no,sort=random]
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run team join TeamB @p[predicate=map:player/team/no,sort=random]
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run team join TeamC @p[predicate=map:player/team/no,sort=random]
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run team join TeamD @p[predicate=map:player/team/no,sort=random]
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run team join TeamE @p[predicate=map:player/team/no,sort=random]

execute unless entity @p[predicate=map:player/team/no] run function map:system/wait/change_to
execute if entity @p[predicate=map:player/team/no] run function map:system/begin/team_member/set_member_randomly