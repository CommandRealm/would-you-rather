team add skydive
team modify skydive seeFriendlyInvisibles true
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=blue_select] run team join skydive @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=yellow_select] run team join skydive @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=blue_select] run team modify skydive color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=yellow_select] run team modify skydive color yellow
team modify skydive collisionRule never
team modify skydive friendlyFire false
scoreboard players set @a[team=skydive,tag=playing] game_countdown 120


gamemode adventure @a[team=skydive,gamemode=!adventure,tag=playing]
effect give @a[team=skydive,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=skydive,gamemode=adventure] weakness 10000 255 true
effect give @a[team=skydive,gamemode=adventure] blindness 10000 255 true
effect give @a[team=skydive,gamemode=adventure] slowness 10000 255 true
effect give @a[team=skydive,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=skydive,gamemode=adventure] levitation 1 255 true

tp @a[team=skydive,gamemode=adventure] 20051 114 -15 -90 5
spawnpoint @a[team=skydive,gamemode=adventure] 20051 114 -15

tellraw @a[team=skydive,tag=!tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Survive five random dropper levels in a row.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]