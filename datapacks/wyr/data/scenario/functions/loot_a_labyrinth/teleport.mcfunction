team add labyrinth
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=blue_select] run team join labyrinth @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=yellow_select] run team join labyrinth @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=blue_select] run team modify labyrinth color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=yellow_select] run team modify labyrinth color yellow
team modify labyrinth seeFriendlyInvisibles false
team modify labyrinth collisionRule never
team modify labyrinth friendlyFire false
scoreboard players set @a[team=labyrinth,tag=playing] game_countdown 120

gamemode adventure @a[team=labyrinth,gamemode=!adventure,tag=playing]
effect give @a[team=labyrinth,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=labyrinth,gamemode=adventure] weakness 10000 255 true
effect give @a[team=labyrinth,gamemode=adventure] blindness 10000 255 true
effect give @a[team=labyrinth,gamemode=adventure] slowness 10000 255 true
effect give @a[team=labyrinth,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=labyrinth,gamemode=adventure] levitation 1 255 true

setblock 14032 1 14032 dirt

tp @a[team=labyrinth,gamemode=adventure] 14032 2 14032
spawnpoint @a[team=labyrinth,gamemode=adventure] 14032 2 14032

tellraw @a[team=labyrinth,tag=!tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Find five different treasures and return to the beacon.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]