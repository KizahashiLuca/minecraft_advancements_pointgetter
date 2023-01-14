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
title @a title ["",{"text":"チーム設定フェーズ","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/team/no] subtitle [""]
title @a[predicate=map:player/team/a] subtitle ["",{"text":"あなたは 現在 ","color":"white","bold":false,"italic":false},{"text":"赤チーム","color":"red","bold":true,"italic":false},{"text":" です。","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/team/b] subtitle ["",{"text":"あなたは 現在 ","color":"white","bold":false,"italic":false},{"text":"青チーム","color":"blue","bold":true,"italic":false},{"text":" です。","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/team/c] subtitle ["",{"text":"あなたは 現在 ","color":"white","bold":false,"italic":false},{"text":"黄チーム","color":"yellow","bold":true,"italic":false},{"text":" です。","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/team/d] subtitle ["",{"text":"あなたは 現在 ","color":"white","bold":false,"italic":false},{"text":"緑チーム","color":"green","bold":true,"italic":false},{"text":" です。","color":"white","bold":false,"italic":false}]
title @a[predicate=map:player/team/e] subtitle ["",{"text":"あなたは 現在 ","color":"white","bold":false,"italic":false},{"text":"紫チーム","color":"dark_purple","bold":true,"italic":false},{"text":" です。","color":"white","bold":false,"italic":false}]