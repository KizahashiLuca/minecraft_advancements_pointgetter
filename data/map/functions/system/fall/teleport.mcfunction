########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Add a tag
tag @s add MAP_DetectTeleportee

## Teleport
execute as @e[predicate=map:system/fall/teleport/teleporter,limit=1] if score @s ParticipantNumber = @p[predicate=map:system/fall/teleport/detect_teleportee] ParticipantNumber at @s run tp @p[predicate=map:system/fall/teleport/detect_teleportee] ~ ~ ~

## Remove a tag
tag @p[predicate=map:system/fall/teleport/detect_teleportee] remove MAP_DetectTeleportee