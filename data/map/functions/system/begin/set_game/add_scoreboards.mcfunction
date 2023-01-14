########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add scoreboards
#### game phase
scoreboard objectives add DataVersion dummy
scoreboard objectives add Version dummy
scoreboard objectives add Phase dummy
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add Kill dummy
scoreboard objectives add KillTemp minecraft.custom:minecraft.player_kills
scoreboard objectives add TeleportMinecart trigger
scoreboard objectives add TeleportCenter trigger
#### timer
scoreboard objectives add 2 dummy
scoreboard objectives add TotalSecond dummy
scoreboard objectives add Minute dummy
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
#### participants
scoreboard objectives add ParticipantNumber dummy
scoreboard objectives add NumOfParticipants dummy
#### onground
scoreboard objectives add OnGround dummy
#### position
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add 45 dummy
scoreboard objectives add Angle dummy
#### randomizer
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
#### setting phase - choose time limit
scoreboard objectives add 10 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 1000 dummy
scoreboard objectives add 10000 dummy
scoreboard objectives add Digit0001 dummy
scoreboard objectives add Digit0010 dummy
scoreboard objectives add Digit0100 dummy
scoreboard objectives add Digit1000 dummy
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeLimitPrv dummy
#### setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderTmp dummy
scoreboard objectives add WorldBorderPrv dummy
scoreboard objectives add WorldBorderEnd dummy
scoreboard objectives add PosXCeil dummy
scoreboard objectives add PosZCeil dummy
scoreboard objectives add PosXFloor dummy
scoreboard objectives add PosZFloor dummy
#### setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
#### setting phase - choose minecart interval
scoreboard objectives add CartInterval dummy
scoreboard objectives add CartIntervalPrv dummy
#### setting phase - choose gamerule
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add DaylightCycle dummy
scoreboard objectives add NumberOfMinecarts dummy
scoreboard objectives add WeatherCyclePrv dummy
scoreboard objectives add DaylightCyclePrv dummy
scoreboard objectives add NumberOfMinecartsPrv dummy
#### setting phase - choose team setting
scoreboard objectives add SetTeamManual dummy
scoreboard objectives add NumberOfTeams dummy
scoreboard objectives add DeathPenaltyTime dummy
scoreboard objectives add friendlyFire dummy
scoreboard objectives add collisionRule dummy
scoreboard objectives add VisibleName dummy
scoreboard objectives add VisibleInvis dummy
scoreboard objectives add VisibleDeath dummy
scoreboard objectives add SetTeamManualPrv dummy
scoreboard objectives add NumberOfTeamsPrv dummy
scoreboard objectives add DeathPenaltyTimePrv dummy
scoreboard objectives add friendlyFirePrv dummy
scoreboard objectives add collisionRulePrv dummy
scoreboard objectives add VisibleNamePrv dummy
scoreboard objectives add VisibleInvisPrv dummy
scoreboard objectives add VisibleDeathPrv dummy
#### wait phase
scoreboard objectives add WaitTime dummy
scoreboard objectives add Sidebar dummy ["",{"text":"設定項目"}]
#### advancements
scoreboard objectives add HasAdvancements dummy
scoreboard objectives add Points dummy ["",{"text":"取得済み点数"}]
#### summons minecart
scoreboard objectives add GetMinecartCount dummy
scoreboard objectives add HasLootTable dummy
#### team
scoreboard objectives add TeamMemberNotExist dummy