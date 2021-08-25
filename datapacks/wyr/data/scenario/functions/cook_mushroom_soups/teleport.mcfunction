team add cms
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=blue_select] run team join cms @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=yellow_select] run team join cms @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=blue_select] run team modify cms color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=yellow_select] run team modify cms color yellow
team modify cms seeFriendlyInvisibles false
team modify cms collisionRule never
team modify cms friendlyFire false
scoreboard players set @a[team=cms,tag=playing] game_countdown 120


gamemode adventure @a[team=cms,gamemode=!adventure,tag=playing]
effect give @a[team=cms,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=cms,gamemode=adventure] weakness 10000 255 true
effect give @a[team=cms,gamemode=adventure] blindness 10000 255 true
effect give @a[team=cms,gamemode=adventure] slowness 10000 255 true
effect give @a[team=cms,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=cms,gamemode=adventure] levitation 1 255 true

tp @a[team=cms,gamemode=adventure] 38998 65 -6 -35 0
spawnpoint @a[team=cms,gamemode=adventure] 38998 65 -6


tellraw @a[team=cms,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Put together three mushroom soups and deliver them to the customers.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]