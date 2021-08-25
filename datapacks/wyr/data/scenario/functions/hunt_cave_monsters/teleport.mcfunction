team add hcm
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=blue_select] run team join hcm @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=yellow_select] run team join hcm @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=blue_select] run team modify hcm color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=yellow_select] run team modify hcm color yellow
team modify hcm seeFriendlyInvisibles false
team modify hcm collisionRule never
team modify hcm friendlyFire false
scoreboard players set @a[team=hcm,tag=playing] game_countdown 120


gamemode adventure @a[team=hcm,gamemode=!adventure,tag=playing]
effect give @a[team=hcm,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=hcm,gamemode=adventure] weakness 10000 255 true
effect give @a[team=hcm,gamemode=adventure] blindness 10000 255 true
effect give @a[team=hcm,gamemode=adventure] slowness 10000 255 true
effect give @a[team=hcm,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=hcm,gamemode=adventure] levitation 1 255 true

tp @a[team=hcm,gamemode=adventure] 18988 68 29 270 10
spawnpoint @a[team=hcm,gamemode=adventure] 18988 68 29
tellraw @a[team=hcm,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Shoot mobs and reach the score goal before time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]