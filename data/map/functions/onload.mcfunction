########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Change gamerules always
gamerule maxCommandChainLength 65536

## Count players
execute unless predicate map:phase/in_game run function map:system/begin/start_game/count_players

## Send Title Message
function map:system/common/message/begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=map:phase/not_in_game] ["",{"text":"------------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=map:phase/not_in_game] ["",{"translate":"  ゲームの必要人数は %s 人までです。","with":[{"text":"20","color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=map:phase/not_in_game] ["",{"translate":"  以下をクリックしてゲームを開始できます。","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=map:phase/not_in_game,predicate=map:gamerules/num_of_participants/one] ["",{"translate":"     >> %s","with":[{"text":"ソロ戦","color":"green","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックしてソロ戦開始"},"clickEvent":{"action":"run_command","value":"/function map:system/begin/start_game/solo/main"}}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=map:phase/not_in_game,predicate=map:gamerules/num_of_participants/not_one] ["",{"translate":"     >> %s","with":[{"text":"チーム戦","color":"green","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックして2チーム戦開始"},"clickEvent":{"action":"run_command","value":"/function map:system/begin/start_game/team/main"}}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=map:phase/not_in_game] ["",{"translate":"     ※ 詳細設定してのゲーム開始は %s","with":[{"text":"こちら","color":"light_purple","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックして詳細設定開始"},"clickEvent":{"action":"run_command","value":"/function map:system/begin/start_game/details/main"}}],"color":"white","bold":false,"italic":false}]
function map:system/common/message/end

## Remove a tag
tag @a[predicate=map:phase/not_in_game] remove MAP_Participant

## Remove scoreboard
execute if predicate map:phase/not_in_game run scoreboard objectives remove NumOfParticipants