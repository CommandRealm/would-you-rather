team add saru
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=blue_select] run team join saru @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=yellow_select] run team join saru @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=blue_select] run team modify saru color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=yellow_select] run team modify saru color yellow
team modify saru seeFriendlyInvisibles false
team modify saru collisionRule never
team modify saru friendlyFire false
scoreboard players set @a[team=saru,tag=playing] game_countdown 120


gamemode adventure @a[team=saru,gamemode=!adventure,tag=playing]
effect give @a[team=saru,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=saru,gamemode=adventure] weakness 10000 255 true
effect give @a[team=saru,gamemode=adventure] blindness 10000 255 true
effect give @a[team=saru,gamemode=adventure] slowness 10000 255 true
effect give @a[team=saru,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=saru,gamemode=adventure] levitation 1 255 true

tp @a[team=saru,gamemode=adventure] 28998 67 -4 -72 0
spawnpoint @a[team=saru,gamemode=adventure] 28998 67 -4
tellraw @a[team=saru,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Kill the three glowing robots.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]