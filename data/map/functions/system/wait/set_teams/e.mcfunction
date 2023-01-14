########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add a tag
tag @p[predicate=map:player/team/e,sort=random] add MAP_Leader

## Set gamerule - friendlyFire
execute if predicate map:gamerules/team_match/friendly_fire/true run team modify TeamE friendlyFire true
execute if predicate map:gamerules/team_match/friendly_fire/false run team modify TeamE friendlyFire false
## Set gamerule - collisionRule
execute if predicate map:gamerules/team_match/collision_rule/true run team modify TeamE collisionRule always
execute if predicate map:gamerules/team_match/collision_rule/false run team modify TeamE collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if predicate map:gamerules/team_match/nametag_visibility/true run team modify TeamE nametagVisibility hideForOtherTeams
execute if predicate map:gamerules/team_match/nametag_visibility/false run team modify TeamE nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if predicate map:gamerules/team_match/see_friendly_invisibles/true run team modify TeamE seeFriendlyInvisibles true
execute if predicate map:gamerules/team_match/see_friendly_invisibles/false run team modify TeamE seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if predicate map:gamerules/team_match/death_message_visibility/true run team modify TeamE deathMessageVisibility hideForOtherTeams
execute if predicate map:gamerules/team_match/death_message_visibility/false run team modify TeamE deathMessageVisibility never