team add wat
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=blue_select] run team join wat @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=yellow_select] run team join wat @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=blue_select] run team modify wat color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=yellow_select] run team modify wat color yellow
team modify wat seeFriendlyInvisibles false
team modify wat collisionRule never
team modify wat friendlyFire false
scoreboard players set @a[team=wat,tag=playing] game_countdown 120


gamemode adventure @a[team=wat,gamemode=!adventure,tag=playing]
effect give @a[team=wat,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=wat,gamemode=adventure] weakness 10000 255 true
effect give @a[team=wat,gamemode=adventure] blindness 10000 255 true
effect give @a[team=wat,gamemode=adventure] slowness 10000 255 true
effect give @a[team=wat,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=wat,gamemode=adventure] levitation 1 255 true

tp @a[team=wat,gamemode=adventure] 6969 89 -10 -22.5 10
spawnpoint @a[team=wat,gamemode=adventure] 6969 89 -10
tellraw @a[team=wat,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the end of the parkour course.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]