########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Title message
title @a times 0 10 0
title @a title ["",{"text":"初期設定フェーズ","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/not_host] subtitle ["",{"selector":"@p[predicate=map:player/host]","color":"white","bold":true,"italic":false},{"text":" が初期設定中です。","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/host] subtitle ["",{"selector":"@p[predicate=map:player/host]","color":"white","bold":true,"italic":false},{"text":" は初期設定してください。","color":"white","bold":false,"italic":false}]