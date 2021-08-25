kill @e[type=item,tag=pgs_die_between_rounds]
tag @a remove pgs_failed
kill @e[type=area_effect_cloud,tag=pgs_action]
kill @e[type=area_effect_cloud,tag=pgs_location]
kill @e[type=area_effect_cloud,tag=pgs_sound_location]
scoreboard players set $mod random 20
function random:random
scoreboard players operation $action pgs_timer = $rand random
execute if score $action pgs_timer matches 0 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Jump up and down!","color":"green"}]'}
execute if score $action pgs_timer matches 1 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"Sit on the couch!","color":"green"}]'}
execute if score $action pgs_timer matches 1 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"Living Room","color":"aqua"}]'}
execute if score $action pgs_timer matches 2 run summon area_effect_cloud 27025 66 -17 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 2 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Go in the kitchen!","color":"green"}]'}
execute if score $action pgs_timer matches 3 run summon area_effect_cloud 27021 66 -14 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 3 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"Go upstairs!","color":"green"}]'}
execute if score $action pgs_timer matches 3 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"Kitchen","color":"aqua"}]'}
execute if score $action pgs_timer matches 4 run summon area_effect_cloud 27038 66 -18 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 4 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Go in the bathroom!","color":"green"}]'}
execute if score $action pgs_timer matches 5 run summon area_effect_cloud 27033 66 -25 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 5 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Go to the front-door!","color":"green"}]'}
execute if score $action pgs_timer matches 6 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Run around!","color":"green"}]'}
execute if score $action pgs_timer matches 7 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Crouch!","color":"green"}]'}
execute if score $action pgs_timer matches 8 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Freeze!","color":"green"}]'}
execute if score $action pgs_timer matches 9 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Look at a painting!","color":"green"}]'}
execute if score $action pgs_timer matches 10 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Give me a hug!","color":"green"}]'}
execute if score $action pgs_timer matches 11 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Don\'t jump!","color":"green"}]'}
execute if score $action pgs_timer matches 12 run summon area_effect_cloud 27016 66 -17 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 12 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"Get sugar from the pantry!","color":"green"}]'}
execute if score $action pgs_timer matches 12 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"Kitchen","color":"aqua"}]'}
execute if score $action pgs_timer matches 12 run summon item 27012 66.5 -17 {Item:{id:"minecraft:sugar",Count:1b},PickupDelay:100000,Tags:["pgs_die_between_rounds","pgs_die"]}
execute if score $action pgs_timer matches 13 run summon area_effect_cloud 27035 66 -6 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 13 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Go in the office!","color":"green"}]'}
execute if score $action pgs_timer matches 14 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Get away from the living room!","color":"green"}]'}
execute if score $action pgs_timer matches 15 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Don\'t run!","color":"green"}]'}
execute if score $action pgs_timer matches 16 run summon area_effect_cloud 27021 66 -16 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 16 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Sit at the kitchen table!","color":"green"}]'}
execute if score $action pgs_timer matches 17 run summon area_effect_cloud 27033 66 -25 {Duration:10000,Tags:["pgs_sound_location"]}
execute if score $action pgs_timer matches 17 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action","pgs_has_location"],CustomName:'[{"text":"Pet the dog!","color":"green"}]'}
execute if score $action pgs_timer matches 17 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_location"],CustomName:'[{"text":"Front Door","color":"aqua"}]'}
execute if score $action pgs_timer matches 18 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Put on your coat!","color":"green"}]'}
execute if score $action pgs_timer matches 19 run summon area_effect_cloud 27000 66 0 {Duration:10000,Tags:["pgs_action"],CustomName:'[{"text":"Drop the old-leftovers!","color":"green"}]'}




title @a[tag=playing,team=pgs] title [{"text":""}]
title @a[tag=playing,team=pgs] subtitle [{"selector":"@e[tag=pgs_action,type=area_effect_cloud]"}]
playsound minecraft:block.note_block.bell master @a[tag=playing,team=pgs] 27000 66 0 1000 1.0
scoreboard players set $action_time pgs_timer 180
bossbar set minecraft:play_gene_says/time value 180
bossbar set minecraft:play_gene_says/time visible true




scoreboard objectives remove pgs_run
scoreboard objectives remove pgs_jump
scoreboard objectives remove pgs_crouch
scoreboard objectives remove pgs_walk
scoreboard objectives remove pgs_crouch_d
scoreboard objectives remove pgs_potato
#m


tag @a remove pgs_has_sugar