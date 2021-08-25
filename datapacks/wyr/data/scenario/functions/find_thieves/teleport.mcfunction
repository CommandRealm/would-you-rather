team add ft
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves",tag=blue_select] run team join ft @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves",tag=yellow_select] run team join ft @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves",tag=blue_select] run team modify ft color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves",tag=yellow_select] run team modify ft color yellow
team modify ft seeFriendlyInvisibles false
team modify ft collisionRule always
team modify ft friendlyFire false
scoreboard players set @a[team=ft,tag=playing] game_countdown 120


gamemode adventure @a[team=ft,gamemode=!adventure,tag=playing]
effect give @a[team=ft,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=ft,gamemode=adventure] weakness 10000 255 true
effect give @a[team=ft,gamemode=adventure] blindness 10000 255 true
effect give @a[team=ft,gamemode=adventure] slowness 10000 255 true
effect give @a[team=ft,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=ft,gamemode=adventure] levitation 1 255 true

tp @a[team=ft,gamemode=adventure] 32025 66 -31 90 5
spawnpoint @a[team=ft,gamemode=adventure] 32025 66 -31
tellraw @a[team=ft,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Match the thieves in the crowd to the player head in your inventory. Punch three thieves to win the scenario.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]