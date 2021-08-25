
team add pd
team modify pd color aqua
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=blue_select] run team join pd @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=yellow_select] run team join pd @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=blue_select] run team modify pd color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=yellow_select] run team modify pd color yellow
team modify pd seeFriendlyInvisibles false
team modify pd collisionRule never
team modify pd friendlyFire false
scoreboard players set @a[team=pd,tag=playing] game_countdown 120

gamemode adventure @a[team=pd,gamemode=!adventure,tag=playing]
effect give @a[team=pd,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=pd,gamemode=adventure] weakness 10000 255 true
effect give @a[team=pd,gamemode=adventure] blindness 10000 255 true
effect give @a[team=pd,gamemode=adventure] slowness 10000 255 true
effect give @a[team=pd,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=pd,gamemode=adventure] levitation 1 255 true

tp @a[team=pd,gamemode=adventure] 20977 70 17 -90 2.5
spawnpoint @a[team=pd,gamemode=adventure] 20977 70 17


tellraw @a[team=pd,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Dodge shulker bullets until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]