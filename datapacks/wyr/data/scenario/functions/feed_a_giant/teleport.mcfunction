team add giant
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=blue_select] run team join giant @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=yellow_select] run team join giant @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=blue_select] run team modify giant color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=yellow_select] run team modify giant color yellow
team modify giant seeFriendlyInvisibles false
team modify giant collisionRule never
team modify giant friendlyFire false
scoreboard players set @a[team=giant,tag=playing] game_countdown 120


gamemode adventure @a[team=giant,gamemode=!adventure,tag=playing]
effect give @a[team=giant,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=giant,gamemode=adventure] weakness 10000 255 true
effect give @a[team=giant,gamemode=adventure] blindness 10000 255 true
effect give @a[team=giant,gamemode=adventure] slowness 10000 255 true
effect give @a[team=giant,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=giant,gamemode=adventure] levitation 1 255 true

tp @a[team=giant,gamemode=adventure] 12999 69 -2 0 -20
spawnpoint @a[team=giant,gamemode=adventure] 13000 69 -2

tellraw @a[team=giant,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Complete parkour courses to obtain all three pieces of food. Bring them to the giant.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]