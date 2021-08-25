team add ddp
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Drink dangerous potions",tag=blue_select] run team join ddp @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Drink dangerous potions",tag=yellow_select] run team join ddp @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Drink dangerous potions",tag=blue_select] run team modify ddp color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Drink dangerous potions",tag=yellow_select] run team modify ddp color yellow
team modify ddp seeFriendlyInvisibles false
team modify ddp collisionRule never
team modify ddp friendlyFire false
scoreboard players set @a[team=ddp,tag=playing] game_countdown 120


gamemode adventure @a[team=ddp,gamemode=!adventure,tag=playing]
effect give @a[team=ddp,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=ddp,gamemode=adventure] weakness 10000 255 true
effect give @a[team=ddp,gamemode=adventure] blindness 10000 255 true
effect give @a[team=ddp,gamemode=adventure] slowness 10000 255 true
effect give @a[team=ddp,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=ddp,gamemode=adventure] levitation 1 255 true

tp @a[team=ddp,gamemode=adventure] 30018 67 0 90 0
spawnpoint @a[team=ddp,gamemode=adventure] 30018 67 0
tellraw @a[team=ddp,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Drink a potion, then hope it's not poisonous.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]