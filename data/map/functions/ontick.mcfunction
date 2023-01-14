########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Game system
execute if predicate map:phase/stop run function map:system/finish/stop_game/main
execute if predicate map:phase/exit run function map:system/finish/exit_game/main
execute if predicate map:phase/game run function map:system/game/main
execute if predicate map:phase/fall run function map:system/fall/main
execute if predicate map:phase/wait run function map:system/wait/main
execute if predicate map:phase/begin/team_member run function map:system/begin/team_member/main
execute if predicate map:phase/begin/gui run function map:system/begin/gui/branch

## Item system
execute if predicate map:phase/trial run function map:system/trial/main 
execute if predicate map:phase/in_game run function map:system/item/main