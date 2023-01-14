########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/team_match/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/team_match/master] run function map:system/begin/gui/team_match/change_to
execute as @p[predicate=map:system/begin/gui/team_match/team_member_select] run function map:system/begin/gui/team_match/team_member_select
execute as @p[predicate=map:system/begin/gui/team_match/number_of_teams] run function map:system/begin/gui/team_match/number_of_teams
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time] run function map:system/begin/gui/team_match/death_penalty_time/change_to
execute as @p[predicate=map:system/begin/gui/team_match/other_rules] run function map:system/begin/gui/team_match/other_rules/change_to

execute as @p[predicate=map:system/begin/gui/team_match/cancel] run function map:system/begin/gui/team_match/cancel
execute as @p[predicate=map:system/begin/gui/team_match/default] run function map:system/begin/gui/team_match/default
execute as @p[predicate=map:system/begin/gui/team_match/ok] run function map:system/begin/gui/team_match/ok