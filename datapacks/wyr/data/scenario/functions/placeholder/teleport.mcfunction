team add placeholder
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=blue_select] run team join placeholder @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=yellow_select] run team join placeholder @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=blue_select] run team modify placeholder color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=yellow_select] run team modify placeholder color yellow
team modify placeholder seeFriendlyInvisibles false
team modify placeholder collisionRule never
team modify placeholder friendlyFire false
scoreboard players set @a[team=placeholder,tag=playing] game_countdown 120


gamemode adventure @a[team=placeholder,gamemode=!adventure,tag=playing]
effect give @a[team=placeholder,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=placeholder,gamemode=adventure] weakness 10000 255 true
effect give @a[team=placeholder,gamemode=adventure] blindness 10000 255 true
effect give @a[team=placeholder,gamemode=adventure] slowness 10000 255 true
effect give @a[team=placeholder,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=placeholder,gamemode=adventure] levitation 1 255 true

tp @a[team=placeholder,gamemode=adventure] x y z d1 d2
spawnpoint @a[team=placeholder,gamemode=adventure] x y z(same as ^)
