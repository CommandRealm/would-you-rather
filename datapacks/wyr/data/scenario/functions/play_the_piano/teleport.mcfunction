team add ptp
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play the piano",tag=blue_select] run team join ptp @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play the piano",tag=yellow_select] run team join ptp @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play the piano",tag=blue_select] run team modify ptp color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play the piano",tag=yellow_select] run team modify ptp color yellow
team modify ptp seeFriendlyInvisibles false
team modify ptp collisionRule never
team modify ptp friendlyFire false
scoreboard players set @a[team=ptp,tag=playing] game_countdown 120


gamemode adventure @a[team=ptp,gamemode=!adventure,tag=playing]
effect give @a[team=ptp,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=ptp,gamemode=adventure] weakness 10000 255 true
effect give @a[team=ptp,gamemode=adventure] blindness 10000 255 true
effect give @a[team=ptp,gamemode=adventure] slowness 10000 255 true
effect give @a[team=ptp,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=ptp,gamemode=adventure] levitation 1 255 true

tp @a[team=ptp,gamemode=adventure] 33021 67 6 135 5
spawnpoint @a[team=ptp,gamemode=adventure] 33021 67 6


tellraw @a[team=ptp,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Repeat the notes played for you on the piano.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]