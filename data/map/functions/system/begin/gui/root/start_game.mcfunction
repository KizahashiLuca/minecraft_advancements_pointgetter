########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Team match
execute if predicate map:gamerules/team_match/team_member/random run function map:system/begin/team_member/set_member_randomly
execute if predicate map:gamerules/team_match/team_member/manual run function map:system/begin/team_member/change_to