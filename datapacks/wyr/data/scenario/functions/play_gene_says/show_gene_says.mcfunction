execute if score $time pgs_timer matches 80 run summon area_effect_cloud 27035 67.5 -11 {Tags:["pgs_gene_msg"],Duration:50,CustomName:'[{"text":"G","color":"dark_aqua"}]',CustomNameVisible:1b}
execute if score $time pgs_timer matches 80 run title @a[tag=playing,team=pgs] times 0 20 5
execute if score $time pgs_timer matches 80 run title @a[team=pgs,tag=playing] title [{"text":"G","color":"dark_aqua"}]
execute if score $time pgs_timer matches 83 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Ge","color":"dark_aqua"}]'}
execute if score $time pgs_timer matches 83 run title @a[team=pgs,tag=playing] title [{"text":"Ge","color":"dark_aqua"}]
execute if score $time pgs_timer matches 86 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gen","color":"dark_aqua"}]'}
execute if score $time pgs_timer matches 86 run title @a[team=pgs,tag=playing] title [{"text":"Gen","color":"dark_aqua"}]
execute if score $time pgs_timer matches 89 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene","color":"dark_aqua"}]'}
execute if score $time pgs_timer matches 89 run title @a[team=pgs,tag=playing] title [{"text":"Gene","color":"dark_aqua"}]
execute if score $time pgs_timer matches 92 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"s","color":"aqua"}]'}
execute if score $time pgs_timer matches 92 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"s","color":"aqua"}]
execute if score $time pgs_timer matches 95 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"sa","color":"aqua"}]'}
execute if score $time pgs_timer matches 95 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"sa","color":"aqua"}]
execute if score $time pgs_timer matches 98 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"say","color":"aqua"}]'}
execute if score $time pgs_timer matches 98 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"say","color":"aqua"}]
execute if score $time pgs_timer matches 101 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"says","color":"aqua"}]'}
execute if score $time pgs_timer matches 101 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"says","color":"aqua"}]
execute if score $time pgs_timer matches 103 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"says.","color":"aqua"}]'}
execute if score $time pgs_timer matches 103 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"says.","color":"aqua"}]
execute if score $time pgs_timer matches 105 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"says..","color":"aqua"}]'}
execute if score $time pgs_timer matches 105 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"says..","color":"aqua"}]
execute if score $time pgs_timer matches 107 run data merge entity @e[type=area_effect_cloud,tag=pgs_gene_msg,limit=1] {CustomName:'[{"text":"Gene ","color":"dark_aqua"},{"text":"says...","color":"aqua"}]'}
execute if score $time pgs_timer matches 107 run title @a[team=pgs,tag=playing] title [{"text":"Gene ","color":"dark_aqua"},{"text":"says...","color":"aqua"}]
execute if score $time pgs_timer matches 107 run title @a[tag=playing,team=pgs] times 0 30 5
title @a[team=pgs,tag=playing] subtitle {"text":" "}