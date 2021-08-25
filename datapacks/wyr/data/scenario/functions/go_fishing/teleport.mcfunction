team add gf
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=blue_select] run team join gf @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=yellow_select] run team join gf @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=blue_select] run team modify gf color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=yellow_select] run team modify gf color yellow
team modify gf seeFriendlyInvisibles false
team modify gf collisionRule never
team modify gf friendlyFire false
scoreboard players set @a[team=gf,tag=playing] game_countdown 120


gamemode adventure @a[team=gf,gamemode=!adventure,tag=playing]
effect give @a[team=gf,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=gf,gamemode=adventure] weakness 10000 255 true
effect give @a[team=gf,gamemode=adventure] blindness 10000 255 true
effect give @a[team=gf,gamemode=adventure] slowness 10000 255 true
effect give @a[team=gf,gamemode=adventure] jump_boost 10000 200 true

tp @a[team=gf,gamemode=adventure] 35003 67 -1 25 5
spawnpoint @a[team=gf,gamemode=adventure] 35003 67 -1
tellraw @a[team=gf,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Fish until you reach the score goal.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]