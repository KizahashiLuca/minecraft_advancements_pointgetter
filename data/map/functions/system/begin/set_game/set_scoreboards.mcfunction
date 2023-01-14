########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Set scoreboards
#### game phase
scoreboard players set #map DataVersion 1444
scoreboard players set #map Version 13
scoreboard players set #map Phase 1
scoreboard players set #map Difficulty 0
#### timer
scoreboard players set #map 2 2
#### participants
scoreboard players set #map ParticipantNumber 0
scoreboard players set #map NumOfParticipants 0
#### position
scoreboard players set #map PosX 0
scoreboard players set #map PosY 63
scoreboard players set #map PosZ 0
scoreboard players set #map 45 45
#### randomizer
scoreboard players set #map RandomSeed 0
scoreboard players set #map RandomCount 10
scoreboard players set #map RandomAnswer 0
scoreboard players set #map RandomModder 2147483647
scoreboard players set #map RandomMultiplier 48271
#### setting phase - choose time limit
scoreboard players set #map 10 10
scoreboard players set #map 100 100
scoreboard players set #map 1000 1000
scoreboard players set #map 10000 10000
scoreboard players set #map TimeLimit 30
scoreboard players set #map TimeLimitPrv 30
#### setting phase - choose area
scoreboard players set #map WorldBorder 1000
scoreboard players set #map WorldBorderPrv 1000
scoreboard players set #map WorldBorderEnd 0
#### setting phase - choose difficulty
scoreboard players set #map Difficulty 2
scoreboard players set #map DifficultyPrv 2
#### setting phase - choose minecart interval
scoreboard players set #map CartInterval 5
scoreboard players set #map CartIntervalPrv 5
#### setting phase - choose gamerule
scoreboard players set #map WeatherCycle 1
scoreboard players set #map DaylightCycle 1
scoreboard players set #map NumberOfMinecarts 1
scoreboard players set #map WeatherCyclePrv 1
scoreboard players set #map DaylightCyclePrv 1
scoreboard players set #map NumberOfMinecartsPrv 1
#### setting phase - choose team setting
scoreboard players set #map SetTeamManual 0
scoreboard players set #map NumberOfTeams 2
scoreboard players set #map DeathPenaltyTime 2
scoreboard players set #map friendlyFire 1
scoreboard players set #map collisionRule 1
scoreboard players set #map VisibleName 1
scoreboard players set #map VisibleInvis 1
scoreboard players set #map VisibleDeath 1
scoreboard players set #map SetTeamManualPrv 0
scoreboard players set #map NumberOfTeamsPrv 2
scoreboard players set #map DeathPenaltyTimePrv 2
scoreboard players set #map friendlyFirePrv 1
scoreboard players set #map collisionRulePrv 1
scoreboard players set #map VisibleNamePrv 1
scoreboard players set #map VisibleInvisPrv 1
scoreboard players set #map VisibleDeathPrv 1
#### wait phase
scoreboard players set #map WaitTime 30
#### team
scoreboard players set #map TeamMemberNotExist 0

#### game phase
scoreboard players set @a Phase 0
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMinecart 0
scoreboard players enable @a TeleportMinecart
scoreboard players set @a TeleportCenter 0
scoreboard players enable @a TeleportCenter
#### participants
scoreboard players set @a ParticipantNumber 0
scoreboard players set @a NumOfParticipants 0
#### onground
scoreboard players set @a OnGround 0
#### setting phase - choose area
scoreboard players set @a WorldBorder 1000
scoreboard players set @a WorldBorderPrv 1000
#### advancements
scoreboard players set @a HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #map_team_a HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #map_team_b HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #map_team_c HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #map_team_d HasAdvancements 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #map_team_e HasAdvancements 0
#### summons minecart
scoreboard players set @a GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #map_team_a GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #map_team_b GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #map_team_c GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #map_team_d GetMinecartCount 0
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #map_team_e GetMinecartCount 0