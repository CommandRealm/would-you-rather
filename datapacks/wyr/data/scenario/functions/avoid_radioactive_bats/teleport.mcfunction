team add arb
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=blue_select] run team join arb @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=yellow_select] run team join arb @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=blue_select] run team modify arb color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=yellow_select] run team modify arb color yellow
team modify arb seeFriendlyInvisibles false
team modify arb collisionRule never
team modify arb friendlyFire false
scoreboard players set @a[team=arb,tag=playing] game_countdown 120


gamemode adventure @a[team=arb,gamemode=!adventure,tag=playing]
effect give @a[team=arb,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=arb,gamemode=adventure] weakness 10000 255 true
effect give @a[team=arb,gamemode=adventure] blindness 10000 255 true
effect give @a[team=arb,gamemode=adventure] slowness 10000 255 true
effect give @a[team=arb,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=arb,gamemode=adventure] levitation 1 255 true

tp @a[team=arb,gamemode=adventure] 15000 61 7 180 0
spawnpoint @a[team=arb,gamemode=adventure] 15000 61 7

tellraw @a[team=arb,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Stay alive on the platform until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]