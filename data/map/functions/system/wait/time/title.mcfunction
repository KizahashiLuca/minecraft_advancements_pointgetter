########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

## Title message
title @a times 0 30 0
title @a title ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]
title @a subtitle [""]
title @a[predicate=map:system/wait/time/second/eq_15_or_30] subtitle ["",{"score":{"name":"#map","objective":"Second"},"color":"white","bold":false,"italic":false},{"text":"秒前","color":"white","bold":false,"italic":false}]
title @a[predicate=map:system/wait/time/second/yellow_gage] subtitle ["",{"score":{"name":"#map","objective":"Second"},"color":"yellow","bold":false,"italic":false}]
title @a[predicate=map:system/wait/time/second/red_gage] subtitle ["",{"score":{"name":"#map","objective":"Second"},"color":"red","bold":false,"italic":false}]
title @a[predicate=map:system/wait/time/second/eq_zero] subtitle ["",{"text":"ゲーム開始","color":"red","bold":true,"italic":false}]