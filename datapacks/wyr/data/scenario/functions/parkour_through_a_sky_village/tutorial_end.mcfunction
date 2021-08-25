
function scenario:parkour_through_a_sky_village/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ptasv] remove in_tutorial
scoreboard players reset @a[team=ptasv] tutorial
##Goal text here


fill 37999 66 4 38001 66 12 air replace minecraft:white_stained_glass
fill 37994 87 44 37994 87 36 air replace minecraft:white_stained_glass
fill 38026 94 -19 38006 94 -40 air replace minecraft:white_stained_glass
kill @e[tag=ptasv_platform,type=area_effect_cloud]

summon area_effect_cloud 38000 65 11 {Duration:100000,Tags:["ptasv_die","ptasv_platform","ptasv_platform_1","ptasv_z"]}
summon area_effect_cloud 37994 86 40 {Duration:100000,Tags:["ptasv_die","ptasv_platform","ptasv_platform_2","ptasv_z"]}
summon area_effect_cloud 38016 93 -19 {Duration:100000,Tags:["ptasv_die","ptasv_platform","ptasv_platform_3","ptasv_z"]}

scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform] ptasv_direction 0
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform] ptasv_delay 40
tellraw @a[team=ptasv,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the end of the parkour course.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]