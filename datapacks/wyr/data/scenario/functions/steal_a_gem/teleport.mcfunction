team add rab
team modify rab color aqua
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem",tag=blue_select] run team join rab @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem",tag=yellow_select] run team join rab @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem",tag=blue_select] run team modify rab color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem",tag=yellow_select] run team modify rab color yellow
team modify rab seeFriendlyInvisibles false
team modify rab collisionRule never
team modify rab friendlyFire false
scoreboard players set @a[team=rab,tag=playing] game_countdown 120



gamemode adventure @a[team=rab,gamemode=!adventure,tag=playing]
effect give @a[team=rab,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=rab,gamemode=adventure] weakness 10000 255 true
effect give @a[team=rab,gamemode=adventure] blindness 10000 255 true
effect give @a[team=rab,gamemode=adventure] slowness 10000 255 true
effect give @a[team=rab,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=rab,gamemode=adventure] levitation 1 255 true

tp @a[team=rab,gamemode=adventure] 15983 68.5 0 90 -20
spawnpoint @a[team=rab,gamemode=adventure] 15983 69 0

forceload add 15950 9 15901 -26

tellraw @a[team=rab,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Loot up, get to the vault, take the gem, and get to your truck.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]