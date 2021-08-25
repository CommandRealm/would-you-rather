team add eadl
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=blue_select] run team join eadl @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=yellow_select] run team join eadl @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=blue_select] run team modify eadl color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=yellow_select] run team modify eadl color yellow
team modify eadl seeFriendlyInvisibles false
team modify eadl collisionRule never
team modify eadl friendlyFire false
scoreboard players set @a[team=eadl,tag=playing] game_countdown 120


gamemode adventure @a[team=eadl,gamemode=!adventure,tag=playing]
effect give @a[team=eadl,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=eadl,gamemode=adventure] weakness 10000 255 true
effect give @a[team=eadl,gamemode=adventure] blindness 10000 255 true
effect give @a[team=eadl,gamemode=adventure] slowness 10000 255 true
effect give @a[team=eadl,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=eadl,gamemode=adventure] levitation 1 255 true

tp @a[team=eadl,gamemode=adventure] 8011 56.0 1 -22.5 5
spawnpoint @a[team=eadl,gamemode=adventure] 8011 56 1

tellraw @a[team=eadl,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Find and retrieve the three components inside the lab and then return to your ship.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]