kill @e[type=item,tag=rab_item,tag=!rab_item_in_map]


##item spawning: (happens later because of tutorials.)


##cubicles first (only 5 actually contain items and its random)
kill @e[type=area_effect_cloud,tag=rab_item_spawn]
kill @e[type=area_effect_cloud,tag=rab_cubicle_spawn]
summon area_effect_cloud 15948 78 -397 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15957 78 -397 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15955 78 -390 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15948 78 -390 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15955 78 -385 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15955 78 -377 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15957 78 -372 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15948 78 -372 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15948 78 -365 {Duration:1,Tags:["rab_cubicle_spawn"]}
summon area_effect_cloud 15955 78 -365 {Duration:1,Tags:["rab_cubicle_spawn"]}

kill @e[type=area_effect_cloud,tag=rab_cubicle_spawn,sort=random,limit=5]

tag @e[tag=rab_cubicle_spawn,type=area_effect_cloud] add rab_item_spawn
tag @e[tag=rab_cubicle_spawn,type=area_effect_cloud] remove rab_cubicle_spawn

#every time spawns
summon area_effect_cloud 15949 71 -397 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15957 71 -397 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15958 71 -365 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15949 71 -365 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15936 71 -365 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15935 71 -365 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15937 70 -396 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15965 71 -392 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15962 72 -376 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15967 78 -398 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15967 78 -390 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15966 78 -383 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15965 78 -380 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15967 78 -374 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15967 78 -366 {Duration:1,Tags:["rab_item_spawn"]}
summon area_effect_cloud 15973 70 -362 {Duration:1,Tags:["rab_item_spawn"]}



# old item pool:
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:stick",Count:1b,tag:{rab_melee:1,Enchantments:[{id:"minecraft:knockback",lvl:5}],display:{Name:'[{"text":"Baseball Bat","italic":false,"color":"#93572f"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:stick",Count:1b,tag:{rab_melee:1,Enchantments:[{id:"minecraft:knockback",lvl:5}],display:{Name:'[{"text":"Baseball Bat","italic":false,"color":"#93572f"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:potion",Count:1b,tag:{HideFlags:63,display:{Name:'{"text":"Energy Drink","italic":false,"color":"dark_blue"}'},CustomPotionColor:2714506,CustomPotionEffects:[{Id:1,Amplifier:2,ShowIcon:1b,ShowParticles:1b,Duration:300}]}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:potion",Count:1b,tag:{HideFlags:63,display:{Name:'{"text":"Energy Drink","italic":false,"color":"dark_blue"}'},CustomPotionColor:2714506,CustomPotionEffects:[{Id:1,Amplifier:2,ShowIcon:1b,ShowParticles:1b,Duration:300}]}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Crown","italic":false,"color":"gold"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Body Armor","italic":false,"color":"gray"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Slacks","italic":false,"color":"gray"}]',color:0}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Sneakers","italic":false,"color":"gray"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Shield","italic":false,"color":"yellow"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Shield","italic":false,"color":"yellow"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:totem_of_undying",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Strange Deposit","italic":false,"color":"green"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Golden Apple","italic":false,"color":"gold"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Golden Apple","italic":false,"color":"gold"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:stone_sword",Count:1b,tag:{rab_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Knife","italic":false,"color":"gray"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:stone_sword",Count:1b,tag:{rab_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Knife","italic":false,"color":"gray"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:stone_sword",Count:1b,tag:{rab_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Knife","italic":false,"color":"gray"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Baseball Cap","italic":false,"color":"gray"}]',color:4863}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Baseball Cap","italic":false,"color":"gray"}]',color:4863}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Tattered Shirt","italic":false,"color":"#9c5f62"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Jeans","italic":false,"color":"#395795"}]',color:3757973}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Jeans","italic":false,"color":"#395795"}]',color:3757973}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Dress Shoes","italic":false,"color":"dark_gray"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:stone_axe",Count:1b,tag:{rab_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Axe","italic":false,"color":"white"}]'}}}}
#summon item 16000 60 0 {NoGravity:1b,Tags:["rab_item","rab_die"],Item:{id:"minecraft:flint",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5}],HideFlags:63,display:{Name:'[{"text":"Sharp Rock","italic":false,"color":"dark_gray"}]'}}}}



execute as @e[type=area_effect_cloud,tag=rab_item_spawn] at @s run function scenario:steal_a_gem/spawn_item
kill @e[type=area_effect_cloud,tag=rab_item_spawn]
tag @e[type=item,x=16000,y=66,z=-381,distance=..200] add rab_fresh

#general start:
scoreboard players set $time rab_timer 1800
scoreboard players set $rab active_scenario 1
scoreboard players reset @a[tag=playing,team=rab] death
function scenario:steal_a_gem/active
bossbar set steal_a_gem:suspicion visible true

execute as @e[tag=rab_ai_on_start] at @s run data merge entity @s {NoAI:0}
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal gems",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue rab_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal gems",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow rab_seconds
item replace entity @a[team=rab] hotbar.1 with wooden_sword{HideFlags:63,rab_melee:1,display:{Name:'{"text":"Sharp Stick","color":"gold","italic":false}'},Unbreakable:1}
title @a[team=rab] times 0 20 5
forceload remove 15950 -372 15901 -407
scoreboard players set $door rab_timer 0 
scoreboard players set $gem rab_timer 0


tellraw @a[team=rab] [{"text":"- ","color":"gray"},{"text":"Reminder: ","color":"green","bold":true},{"text":"This scenario uses default PvP.","color":"gray","bold":false}]
tellraw @a[team=rab] [{"text":"<","color":"blue"},{"text":"Miles","color":"green"},{"text":"> ","color":"blue"},{"text":"Make this quick! I have 1:30 left on this song then I'm leaving without y'all.","color":"aqua"}]