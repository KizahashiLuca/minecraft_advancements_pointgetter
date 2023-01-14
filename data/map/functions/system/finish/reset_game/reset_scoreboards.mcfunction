########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Remove scoreboards
#### game phase
scoreboard objectives remove DataVersion
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove Death
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
scoreboard objectives remove TeleportMinecart
scoreboard objectives remove TeleportCenter
#### timer
scoreboard objectives remove 2
scoreboard objectives remove TotalSecond
scoreboard objectives remove Minute
scoreboard objectives remove Second
scoreboard objectives remove Tick
#### participants
scoreboard objectives remove ParticipantNumber
scoreboard objectives remove NumOfParticipants
#### onground
scoreboard objectives remove OnGround
#### position
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove 45
scoreboard objectives remove Angle
#### randomizer
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
#### setting phase - choose time limit
scoreboard objectives remove 10
scoreboard objectives remove 100
scoreboard objectives remove 1000
scoreboard objectives remove 10000
scoreboard objectives remove Digit0001
scoreboard objectives remove Digit0010
scoreboard objectives remove Digit0100
scoreboard objectives remove Digit1000
scoreboard objectives remove TimeLimit
scoreboard objectives remove TimeLimitPrv
#### setting phase - choose area
scoreboard objectives remove WorldBorder
scoreboard objectives remove WorldBorderTmp
scoreboard objectives remove WorldBorderPrv
scoreboard objectives remove WorldBorderEnd
scoreboard objectives remove PosXCeil
scoreboard objectives remove PosZCeil
scoreboard objectives remove PosXFloor
scoreboard objectives remove PosZFloor
#### setting phase - choose difficulty
scoreboard objectives remove Difficulty
scoreboard objectives remove DifficultyPrv
#### setting phase - choose minecart interval
scoreboard objectives remove CartInterval
scoreboard objectives remove CartIntervalPrv
#### setting phase - choose gamerule
scoreboard objectives remove WeatherCycle
scoreboard objectives remove DaylightCycle
scoreboard objectives remove NumberOfMinecarts
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
scoreboard objectives remove NumberOfMinecartsPrv
#### setting phase - choose team setting
scoreboard objectives remove SetTeamManual
scoreboard objectives remove NumberOfTeams
scoreboard objectives remove DeathPenaltyTime
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove VisibleName
scoreboard objectives remove VisibleInvis
scoreboard objectives remove VisibleDeath
scoreboard objectives remove SetTeamManualPrv
scoreboard objectives remove NumberOfTeamsPrv
scoreboard objectives remove DeathPenaltyTimePrv
scoreboard objectives remove friendlyFirePrv
scoreboard objectives remove collisionRulePrv
scoreboard objectives remove VisibleNamePrv
scoreboard objectives remove VisibleInvisPrv
scoreboard objectives remove VisibleDeathPrv
#### wait phase
scoreboard objectives remove WaitTime
scoreboard objectives remove Sidebar
#### advancements
scoreboard objectives remove HasAdvancements
scoreboard objectives remove Points
#### summons minecart
scoreboard objectives remove GetMinecartCount
scoreboard objectives remove HasLootTable
#### team
scoreboard objectives remove TeamMemberNotExist

## Reset players
scoreboard players reset @e
scoreboard players reset #map
scoreboard players reset #map_team_a
scoreboard players reset #map_team_b
scoreboard players reset #map_team_c
scoreboard players reset #map_team_d
scoreboard players reset #map_team_e