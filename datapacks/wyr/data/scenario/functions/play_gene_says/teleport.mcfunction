team add pgs
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play 'Gene Says'",tag=blue_select] run team join pgs @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play 'Gene Says'",tag=yellow_select] run team join pgs @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play 'Gene Says'",tag=blue_select] run team modify pgs color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play 'Gene Says'",tag=yellow_select] run team modify pgs color yellow
team modify pgs seeFriendlyInvisibles false
team modify pgs collisionRule never
team modify pgs friendlyFire false
scoreboard players set @a[team=pgs,tag=playing] game_countdown 120


gamemode adventure @a[team=pgs,gamemode=!adventure,tag=playing]
effect give @a[team=pgs,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=pgs,gamemode=adventure] weakness 10000 255 true
effect give @a[team=pgs,gamemode=adventure] blindness 10000 255 true
effect give @a[team=pgs,gamemode=adventure] slowness 10000 255 true
effect give @a[team=pgs,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=pgs,gamemode=adventure] levitation 1 255 true

tp @a[team=pgs,gamemode=adventure] 27031.0 66.5 -10.5 270 10
spawnpoint @a[team=pgs,gamemode=adventure] 27031 67 -10

tellraw @a[team=pgs,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Follow Gene's instructions. Disobey his instructions if it isn't preceded by: \"Gene says.\"","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]