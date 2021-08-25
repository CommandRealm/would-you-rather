team add cs
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=blue_select] run team join cs @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=yellow_select] run team join cs @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=blue_select] run team modify cs color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=yellow_select] run team modify cs color yellow
team modify cs seeFriendlyInvisibles false
team modify cs collisionRule never
team modify cs friendlyFire false
scoreboard players set @a[team=cs,tag=playing] game_countdown 120


gamemode adventure @a[team=cs,gamemode=!adventure,tag=playing]
effect give @a[team=cs,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=cs,gamemode=adventure] weakness 10000 255 true
effect give @a[team=cs,gamemode=adventure] blindness 10000 255 true
effect give @a[team=cs,gamemode=adventure] slowness 10000 255 true
effect give @a[team=cs,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=cs,gamemode=adventure] levitation 1 255 true

tp @a[team=cs,gamemode=adventure] 36000 66 -1 0 -35
spawnpoint @a[team=cs,gamemode=adventure] 36000 66 -1

tellraw @a[team=cs,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Count sheep that are flying overhead by dropping the bed items. Make sure not to count wool blocks.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]