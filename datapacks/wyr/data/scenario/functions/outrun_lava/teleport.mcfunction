team add ol
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=blue_select] run team join ol @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=yellow_select] run team join ol @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=blue_select] run team modify ol color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=yellow_select] run team modify ol color yellow
team modify ol seeFriendlyInvisibles false
team modify ol collisionRule never
team modify ol friendlyFire false
scoreboard players set @a[team=ol,tag=playing] game_countdown 120


gamemode adventure @a[team=ol,gamemode=!adventure,tag=playing]
effect give @a[team=ol,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=ol,gamemode=adventure] weakness 10000 255 true
effect give @a[team=ol,gamemode=adventure] blindness 10000 255 true
effect give @a[team=ol,gamemode=adventure] slowness 10000 255 true
effect give @a[team=ol,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=ol,gamemode=adventure] levitation 1 255 true



##
tp @a[team=ol,gamemode=adventure] 24001 67 -6 200 0
spawnpoint @a[team=ol,gamemode=adventure] 24001 67 -6

tellraw @a[team=ol,tag=!tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the bunker at the end of the valley before getting caught by lava.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]