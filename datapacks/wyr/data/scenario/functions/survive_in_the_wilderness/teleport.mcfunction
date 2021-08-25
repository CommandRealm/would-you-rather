team add sitw
team modify sitw color aqua
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=blue_select] run team join sitw @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=yellow_select] run team join sitw @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=blue_select] run team modify sitw color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=yellow_select] run team modify sitw color yellow
team modify sitw seeFriendlyInvisibles false
team modify sitw collisionRule never
team modify sitw friendlyFire false
scoreboard players set @a[team=sitw,tag=playing] game_countdown 120

gamemode adventure @a[team=sitw,gamemode=!adventure,tag=playing]
effect give @a[team=sitw,gamemode=adventure] weakness 10000 255 true
effect give @a[team=sitw,gamemode=adventure] blindness 10000 255 true
effect give @a[team=sitw,gamemode=adventure] slowness 10000 255 true
effect give @a[team=sitw,gamemode=adventure] jump_boost 10000 200 true
tp @a[team=sitw,gamemode=adventure] 999 65 -9 -60 10
spawnpoint @a[team=sitw,gamemode=adventure] 999 65 -9

tellraw @a[team=sitw,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Keep your statistics (Warmth, Hunger, and Thirst) above zero until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]