########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Log in the mid of the game
execute as @a[predicate=map:system/begin/team_member/login_midtime] run function map:system/begin/team_member/login_midtime

## Set block
execute positioned 0.5 310 0.5 unless block ~ ~1 ~ minecraft:beacon run function map:system/begin/team_member/set_world/set_block

## Effect
execute positioned 0.5 311 0.5 run function map:system/begin/team_member/effect/main

## Leave from team
execute run function map:system/begin/team_member/leave_team/main

## Join to team
execute positioned 0.5 311 0.5 run function map:system/begin/team_member/join_team/main

## Title message
function map:system/begin/team_member/title

## Detect inventory
execute as @p[predicate=map:system/begin/team_member/master] run function map:system/begin/team_member/change_to
execute as @p[predicate=map:system/begin/team_member/cancel] run function map:system/begin/team_member/cancel
execute as @p[predicate=map:system/begin/team_member/reset] run function map:system/begin/team_member/reset
execute as @p[predicate=map:system/begin/team_member/ok,predicate=map:system/begin/team_member/all_team_exists_member] run function map:system/begin/team_member/ok