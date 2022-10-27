scoreboard players set $time dab_timer 3600
scoreboard players set $dab active_scenario 1
function scenario:defuse_tnt/active

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue dab_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow dab_seconds

##remember to add back in text spawn


kill @e[tag=dab_text]
summon area_effect_cloud 25988.5 78.165 10 {Duration:3600000,Invulnerable:1b,Tags:["die","dab_text"],CustomNameVisible:1b,CustomName:'{"text":"One of these colors is not in the code.","color":"red"}'}
summon area_effect_cloud 25988.5 79.165 10 {Duration:36000000,Invulnerable:1b,Tags:["die","dab_text"],CustomNameVisible:1b,CustomName:'{"text":"One of these colors is in code but in the wrong spot.","color":"dark_aqua"}'}
summon area_effect_cloud 25988.5 80.165 10 {Duration:3600000,Invulnerable:1b,Tags:["die","dab_text"],CustomNameVisible:1b,CustomName:'{"text":"One of these colors is in the perfect spot.","color":"green"}'}

summon area_effect_cloud 25989 77.25 5 {Duration:3600000,Invulnerable:1b,Tags:["die","dab_text"],CustomNameVisible:1b,CustomName:'{"text":"Place blocks here to guess the code!","color":"gold"}'}

#summon area_effect_cloud 25990.75 77.165 10 {Duration:3600000,Invulnerable:1b,Tags:["die","dab_text"],CustomNameVisible:1b,CustomName:'{"text":"Color is in the perfect position,","color":"#1fe7d2"}'}
#summon area_effect_cloud 25990.75 76.915 10 {Duration:3600000,Invulnerable:1b,Tags:["die","dab_text"],CustomNameVisible:1b,CustomName:'{"text":"but is also used elsewhere in the code.","color":"#1fe7d2"}'}


advancement grant @a[team=dab,tag=playing,gamemode=adventure] only advancements:scenario_tnt