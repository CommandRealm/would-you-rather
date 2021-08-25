team add wiaaf
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=blue_select] run team join wiaaf @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=yellow_select] run team join wiaaf @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=blue_select] run team modify wiaaf color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=yellow_select] run team modify wiaaf color yellow
team modify wiaaf seeFriendlyInvisibles false
team modify wiaaf collisionRule never
team modify wiaaf friendlyFire false
scoreboard players set @a[team=wiaaf,tag=playing] game_countdown 120


gamemode adventure @a[team=wiaaf,gamemode=!adventure,tag=playing]
effect give @a[team=wiaaf,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=wiaaf,gamemode=adventure] weakness 10000 255 true
effect give @a[team=wiaaf,gamemode=adventure] blindness 10000 255 true
effect give @a[team=wiaaf,gamemode=adventure] slowness 10000 255 true
effect give @a[team=wiaaf,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=wiaaf,gamemode=adventure] levitation 1 255 true

tp @a[team=wiaaf,gamemode=adventure] 18000 64.75 0 135 0
spawnpoint @a[team=wiaaf,gamemode=adventure] 18000 66 0 

tellraw @a[team=wiaaf,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Dodge falling anvils until the timer runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]