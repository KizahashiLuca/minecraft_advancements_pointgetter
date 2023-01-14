########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Numbering
scoreboard players set #map ParticipantNumber 1
scoreboard players set @a[predicate=map:player/participant] ParticipantNumber 0
function map:system/wait/set_game/numbering
tag @a[predicate=map:player/participant] remove MAP_Numbered

## Set scoreboards
#### timer
scoreboard players set #map Tick 0
scoreboard players set #map Second 30
scoreboard players set #map Minute 0
#### game phase
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMinecart 0
scoreboard players enable @a TeleportMinecart
scoreboard players set @a TeleportCenter 0
scoreboard players enable @a TeleportCenter
#### participants
scoreboard players set @a NumOfParticipants 0
#### onground
scoreboard players set @a OnGround 0
#### time limit
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
#### summons minecart
scoreboard players set @a GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #map_team_a GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #map_team_b GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #map_team_c GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #map_team_d GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #map_team_e GetMinecartCount 0