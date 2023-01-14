########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Detect advancement
execute as @s[predicate=map:player/alive,scores={AD_Husbandry_axolotl_in_a_bucket=0}] run function map:system/game/advancements/husbandry/axolotl_in_a_bucket/branch
