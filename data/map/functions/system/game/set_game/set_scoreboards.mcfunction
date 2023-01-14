########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboards
#### timer
scoreboard players set #map Tick 0
scoreboard players set #map Second 0
scoreboard players operation #map Minute = #map TimeLimit
scoreboard players set #map TotalSecond 60
scoreboard players operation #map TotalSecond *= #map TimeLimit
#### game phase
scoreboard players set @a[predicate=map:player/participant] Phase 21
scoreboard players set @a[predicate=map:player/participant] Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMinecart 0
scoreboard players enable @a TeleportMinecart
scoreboard players set @a TeleportCenter 0
scoreboard players enable @a TeleportCenter
#### participants
scoreboard players set @a NumOfParticipants 0
#### advancements
scoreboard players set @a HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #map_team_a HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #map_team_b HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #map_team_c HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #map_team_d HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #map_team_e HasAdvancements 0
scoreboard players set @a Points 0
execute if predicate map:gamerules/num_of_participants/one run scoreboard objectives setdisplay sidebar Points
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #map_team_a Points 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #map_team_b Points 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #map_team_c Points 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #map_team_d Points 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #map_team_e Points 0