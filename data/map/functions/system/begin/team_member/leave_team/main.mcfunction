########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Leave from team
execute if predicate map:gamerules/team_match/number_of_teams/1p as @a[predicate=map:system/begin/team_member/leave_team/1p] run function map:system/begin/team_member/leave_team/sub
execute if predicate map:gamerules/team_match/number_of_teams/2p as @a[predicate=map:system/begin/team_member/leave_team/2p] run function map:system/begin/team_member/leave_team/sub
execute if predicate map:gamerules/team_match/number_of_teams/3p as @a[predicate=map:system/begin/team_member/leave_team/3p] run function map:system/begin/team_member/leave_team/sub
execute if predicate map:gamerules/team_match/number_of_teams/4p as @a[predicate=map:system/begin/team_member/leave_team/4p] run function map:system/begin/team_member/leave_team/sub
execute if predicate map:gamerules/team_match/number_of_teams/5p as @a[predicate=map:system/begin/team_member/leave_team/5p] run function map:system/begin/team_member/leave_team/sub