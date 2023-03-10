########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Send messages
tellraw @a[predicate=map:gamerules/team_match/friendly_fire/false] ["",{"translate":"[フレンドリーファイア] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/team_match/friendly_fire/true] ["",{"translate":"[フレンドリーファイア] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=map:gamerules/team_match/collision_rule/false] ["",{"translate":"[当たり判定] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/team_match/collision_rule/true] ["",{"translate":"[当たり判定] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=map:gamerules/team_match/nametag_visibility/false] ["",{"translate":"[ネームタグ表示] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/team_match/nametag_visibility/true] ["",{"translate":"[ネームタグ表示] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=map:gamerules/team_match/see_friendly_invisibles/false] ["",{"translate":"[透明可視化] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/team_match/see_friendly_invisibles/true] ["",{"translate":"[透明可視化] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a[predicate=map:gamerules/team_match/death_message_visibility/false] ["",{"translate":"[死亡メッセージ] %s","with":[{"text":"なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=map:gamerules/team_match/death_message_visibility/true] ["",{"translate":"[死亡メッセージ] %s","with":[{"text":"あり","bold":true}],"color":"green","bold":false,"italic":false}]

## Change to choose setting
function map:system/begin/gui/team_match/change_to