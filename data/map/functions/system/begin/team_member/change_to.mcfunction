########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Clear inventory
clear @p[predicate=map:player/host]

## Change bossbar
bossbar set minecraft:bossbar name ["",{"text":"チーム設定フェーズ","color":"white","bold":false,"italic":false}]

## Change dimension
execute if predicate map:phase/begin/gui run function map:system/begin/team_member/set_world/main

## Count team
scoreboard players set #map TeamMemberNotExist 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 unless entity @p[predicate=map:player/team/a] run scoreboard players add #map TeamMemberNotExist 1
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 unless entity @p[predicate=map:player/team/b] run scoreboard players add #map TeamMemberNotExist 1
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 unless entity @p[predicate=map:player/team/c] run scoreboard players add #map TeamMemberNotExist 1
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 unless entity @p[predicate=map:player/team/d] run scoreboard players add #map TeamMemberNotExist 1
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 unless entity @p[predicate=map:player/team/e] run scoreboard players add #map TeamMemberNotExist 1

## Set inventory
execute as @p[predicate=map:player/host] run loot replace entity @s inventory.4 loot map:system/begin/team_member/master
execute as @p[predicate=map:player/host] run loot replace entity @s inventory.19 loot map:system/begin/team_member/cancel
execute as @p[predicate=map:player/host] run loot replace entity @s inventory.22 loot map:system/begin/team_member/reset
execute as @p[predicate=map:player/host,predicate=map:system/begin/team_member/all_team_exists_member] run loot replace entity @s inventory.25 loot map:system/begin/team_member/ok

## Change phase
scoreboard players set #map Phase 18