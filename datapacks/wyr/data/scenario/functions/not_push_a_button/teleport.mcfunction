team add npab
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=blue_select] run team join npab @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=yellow_select] run team join npab @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=blue_select] run team modify npab color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=yellow_select] run team modify npab color yellow
team modify npab seeFriendlyInvisibles false
team modify npab collisionRule always
team modify npab friendlyFire true
scoreboard players set @a[team=npab,tag=playing] game_countdown 120


gamemode adventure @a[team=npab,gamemode=!adventure,tag=playing]
effect give @a[team=npab,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=npab,gamemode=adventure] weakness 10000 255 true
effect give @a[team=npab,gamemode=adventure] blindness 10000 255 true
effect give @a[team=npab,gamemode=adventure] slowness 10000 255 true
effect give @a[team=npab,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=npab,gamemode=adventure] levitation 1 255 true

tp @a[team=npab,gamemode=adventure] 6000 67 7 180 -3
spawnpoint @a[team=npab,gamemode=adventure] 6000 67 7

tellraw @a[team=npab,tag=!tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Don’t press the button.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]