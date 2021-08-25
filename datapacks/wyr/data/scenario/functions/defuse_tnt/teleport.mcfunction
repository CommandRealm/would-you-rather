team add dab
team modify dab color aqua
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=blue_select] run team join dab @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=yellow_select] run team join dab @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=blue_select] run team modify dab color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=yellow_select] run team modify dab color yellow
team modify dab seeFriendlyInvisibles false
team modify dab collisionRule never
team modify dab friendlyFire false
scoreboard players set @a[team=dab,tag=playing] game_countdown 120


gamemode adventure @a[team=dab,gamemode=!adventure,tag=playing]
effect give @a[team=dab,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=dab,gamemode=adventure] weakness 10000 255 true
effect give @a[team=dab,gamemode=adventure] blindness 10000 255 true
effect give @a[team=dab,gamemode=adventure] slowness 10000 255 true
effect give @a[team=dab,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=dab,gamemode=adventure] levitation 1 255 true

tp @a[team=dab,gamemode=adventure] 25993 77 5 90 0
spawnpoint @a[team=dab,gamemode=adventure] 25993 77 5


tellraw @a[team=dab,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Guess the predetermined three-color code before using all seven guesses, or time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]