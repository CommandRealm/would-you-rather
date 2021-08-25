team add bafe
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=blue_select] run team join bafe @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=yellow_select] run team join bafe @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=blue_select] run team modify bafe color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=yellow_select] run team modify bafe color yellow
team modify bafe seeFriendlyInvisibles false
team modify bafe collisionRule never
team modify bafe friendlyFire false
scoreboard players set @a[team=bafe,tag=playing] game_countdown 120


gamemode adventure @a[team=bafe,gamemode=!adventure,tag=playing]
effect give @a[team=bafe,gamemode=adventure] levitation 10000 255 true
effect give @a[team=bafe,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=bafe,gamemode=adventure] weakness 10000 255 true
effect give @a[team=bafe,gamemode=adventure] blindness 10000 255 true
effect give @a[team=bafe,gamemode=adventure] slowness 10000 255 true
effect give @a[team=bafe,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=bafe,gamemode=adventure] levitation 1 255 true

tp @a[team=bafe,gamemode=adventure] 12002 62 1 0 0
spawnpoint @a[team=bafe] 12002 62 1


tellraw @a[team=bafe,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the top of the shaft before levitation runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]