team add saga
team modify saga color aqua
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=blue_select] run team join saga @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=yellow_select] run team join saga @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=blue_select] run team modify saga color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=yellow_select] run team modify saga color yellow
team modify saga seeFriendlyInvisibles false
team modify saga collisionRule never
team modify saga friendlyFire false
scoreboard players set @a[team=saga,tag=playing] game_countdown 120


gamemode adventure @a[team=saga,gamemode=!adventure,tag=playing]
effect give @a[team=saga,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=saga,gamemode=adventure] weakness 10000 255 true
effect give @a[team=saga,gamemode=adventure] blindness 10000 255 true
effect give @a[team=saga,gamemode=adventure] slowness 10000 255 true
effect give @a[team=saga,gamemode=adventure] jump_boost 10000 200 true


tp @a[team=saga,gamemode=adventure] 3981 85 0 135 20
spawnpoint @a[team=saga,gamemode=adventure] 3981 84 0


tellraw @a[team=saga,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Evade fire and fireballs from ghasts until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]