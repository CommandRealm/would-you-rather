team add ptasv
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=blue_select] run team join ptasv @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=yellow_select] run team join ptasv @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=blue_select] run team modify ptasv color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=yellow_select] run team modify ptasv color yellow
team modify ptasv seeFriendlyInvisibles false
team modify ptasv collisionRule never
team modify ptasv friendlyFire false
scoreboard players set @a[team=ptasv,tag=playing] game_countdown 120


gamemode adventure @a[team=ptasv,gamemode=!adventure,tag=playing]
effect give @a[team=ptasv,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=ptasv,gamemode=adventure] weakness 10000 255 true
effect give @a[team=ptasv,gamemode=adventure] blindness 10000 255 true
effect give @a[team=ptasv,gamemode=adventure] slowness 10000 255 true
effect give @a[team=ptasv,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=ptasv,gamemode=adventure] levitation 1 255 true

tp @a[team=ptasv,gamemode=adventure] 38000 67 -2 0 0
spawnpoint @a[team=ptasv,gamemode=adventure] 38000 67 -2
tellraw @a[team=ptasv,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the end of the parkour course.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]