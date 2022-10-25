team add rab
team modify rab color aqua
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal gems",tag=blue_select] run team join rab @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal gems",tag=yellow_select] run team join rab @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal gems",tag=blue_select] run team modify rab color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal gems",tag=yellow_select] run team modify rab color yellow
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

tp @a[team=rab,gamemode=adventure] 15998 68.5 -381 90 -20
spawnpoint @a[team=rab,gamemode=adventure] 15998 68 -381

forceload add 15950 -371 15901 -407

tellraw @a[team=rab,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Sublty get to the vault or loot the offices, take the gems, and get back to your truck.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]