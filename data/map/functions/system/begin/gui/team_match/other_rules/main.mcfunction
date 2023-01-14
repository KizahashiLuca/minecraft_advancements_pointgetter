########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect dropping
execute if entity @e[predicate=map:system/begin/gui/throw_item] run function map:system/begin/gui/team_match/other_rules/change_to
kill @e[predicate=map:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/master] run function map:system/begin/gui/team_match/change_to
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/friendly_fire] run function map:system/begin/gui/team_match/other_rules/friendly_fire
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/collision_rule] run function map:system/begin/gui/team_match/other_rules/collision_rule
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/nametag_visibility] run function map:system/begin/gui/team_match/other_rules/nametag_visibility
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/see_friendly_invisibles] run function map:system/begin/gui/team_match/other_rules/see_friendly_invisibles
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/death_message_visibility] run function map:system/begin/gui/team_match/other_rules/death_message_visibility

execute as @p[predicate=map:system/begin/gui/team_match/other_rules/cancel] run function map:system/begin/gui/team_match/other_rules/cancel
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/default] run function map:system/begin/gui/team_match/other_rules/default
execute as @p[predicate=map:system/begin/gui/team_match/other_rules/ok] run function map:system/begin/gui/team_match/other_rules/ok