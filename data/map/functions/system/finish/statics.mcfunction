########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Display statics
tellraw @a ["",{"text":"------------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  ","color":"white","bold":false,"italic":false},{"text":"進捗 統計","color":"white","bold":true,"italic":false}]
execute if predicate map:gamerules/team_match/number_of_teams/ge_1 run tellraw @a ["",{"translate":"    %s\n      獲得点数 : %s点\n      達成進捗総数 : %s個\n      物資獲得回数 : %s回","with":[{"text":"赤チーム","color":"red","bold":true},{"score":{"name":"#map_team_a","objective":"Points"},"color":"red","bold":true},{"score":{"name":"#map_team_a","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#map_team_a","objective":"GetMinecartCount"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate map:gamerules/team_match/number_of_teams/ge_2 run tellraw @a ["",{"translate":"    %s\n      獲得点数 : %s点\n      達成進捗総数 : %s個\n      物資獲得回数 : %s回","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"#map_team_b","objective":"Points"},"color":"red","bold":true},{"score":{"name":"#map_team_b","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#map_team_b","objective":"GetMinecartCount"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate map:gamerules/team_match/number_of_teams/ge_3 run tellraw @a ["",{"translate":"    %s\n      獲得点数 : %s点\n      達成進捗総数 : %s個\n      物資獲得回数 : %s回","with":[{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#map_team_c","objective":"Points"},"color":"red","bold":true},{"score":{"name":"#map_team_c","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#map_team_c","objective":"GetMinecartCount"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate map:gamerules/team_match/number_of_teams/ge_4 run tellraw @a ["",{"translate":"    %s\n      獲得点数 : %s点\n      達成進捗総数 : %s個\n      物資獲得回数 : %s回","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#map_team_d","objective":"Points"},"color":"red","bold":true},{"score":{"name":"#map_team_d","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#map_team_d","objective":"GetMinecartCount"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate map:gamerules/team_match/number_of_teams/ge_5 run tellraw @a ["",{"translate":"    %s\n      獲得点数 : %s点\n      達成進捗総数 : %s個\n      物資獲得回数 : %s回","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"#map_team_e","objective":"Points"},"color":"red","bold":true},{"score":{"name":"#map_team_e","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#map_team_e","objective":"GetMinecartCount"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
function map:system/common/message/end