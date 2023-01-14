########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/team_match/death_penalty_time/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/master] run function map:system/begin/gui/team_match/death_penalty_time/change_to
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/digit_0100] run function map:system/begin/gui/team_match/death_penalty_time/add_0100
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/digit_0010] run function map:system/begin/gui/team_match/death_penalty_time/add_0010
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/digit_0001] run function map:system/begin/gui/team_match/death_penalty_time/add_0001
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/minute] run function map:system/begin/gui/team_match/death_penalty_time/change_to
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/cancel] run function map:system/begin/gui/team_match/death_penalty_time/cancel
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/default] run function map:system/begin/gui/team_match/death_penalty_time/default
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/reset] run function map:system/begin/gui/team_match/death_penalty_time/reset
execute as @p[predicate=map:system/begin/gui/team_match/death_penalty_time/ok] run function map:system/begin/gui/team_match/death_penalty_time/ok