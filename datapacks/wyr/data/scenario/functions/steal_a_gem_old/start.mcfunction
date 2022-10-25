kill @e[type=item,tag=rab_old_item,tag=!rab_old_item_in_map]


##item spawning: (happens later because of tutorials.)


##cubicles first (only 5 actually contain items and its random)
kill @e[type=area_effect_cloud,tag=rab_old_item_spawn]
kill @e[type=area_effect_cloud,tag=rab_old_cubicle_spawn]
summon area_effect_cloud 15948 78 -16 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15957 78 -16 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15955 78 -9 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15948 78 -9 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15955 78 -4 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15955 78 4 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15957 78 9 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15948 78 9 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15948 78 16 {Duration:1,Tags:["rab_old_cubicle_spawn"]}
summon area_effect_cloud 15955 78 16 {Duration:1,Tags:["rab_old_cubicle_spawn"]}

kill @e[type=area_effect_cloud,tag=rab_old_cubicle_spawn,sort=random,limit=5]

tag @e[tag=rab_old_cubicle_spawn,type=area_effect_cloud] add rab_old_item_spawn
tag @e[tag=rab_old_cubicle_spawn,type=area_effect_cloud] remove rab_old_cubicle_spawn


#every time spawns
summon area_effect_cloud 15949 71 -16 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15957 71 -16 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15958 71 16 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15949 71 16 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15936 71 16 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15935 71 16 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15937 70 -15 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15965 71 -11 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15962 72 15 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15967 78 -17 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15967 78 -9 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15966 78 -2 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15965 78 1 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15967 78 7 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15967 78 15 {Duration:1,Tags:["rab_old_item_spawn"]}
summon area_effect_cloud 15973 70 19 {Duration:1,Tags:["rab_old_item_spawn"]}



#item pool:
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:stick",Count:1b,tag:{rab_old_melee:1,Enchantments:[{id:"minecraft:knockback",lvl:5}],display:{Name:'[{"text":"Baseball Bat","italic":false,"color":"#93572f"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:stick",Count:1b,tag:{rab_old_melee:1,Enchantments:[{id:"minecraft:knockback",lvl:5}],display:{Name:'[{"text":"Baseball Bat","italic":false,"color":"#93572f"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:potion",Count:1b,tag:{HideFlags:63,display:{Name:'{"text":"Energy Drink","italic":false,"color":"dark_blue"}'},CustomPotionColor:2714506,CustomPotionEffects:[{Id:1,Amplifier:2,ShowIcon:1b,ShowParticles:1b,Duration:300}]}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:potion",Count:1b,tag:{HideFlags:63,display:{Name:'{"text":"Energy Drink","italic":false,"color":"dark_blue"}'},CustomPotionColor:2714506,CustomPotionEffects:[{Id:1,Amplifier:2,ShowIcon:1b,ShowParticles:1b,Duration:300}]}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Crown","italic":false,"color":"gold"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Body Armor","italic":false,"color":"gray"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Slacks","italic":false,"color":"gray"}]',color:0}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Sneakers","italic":false,"color":"gray"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Shield","italic":false,"color":"yellow"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Shield","italic":false,"color":"yellow"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:totem_of_undying",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Strange Deposit","italic":false,"color":"green"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Golden Apple","italic":false,"color":"gold"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Golden Apple","italic":false,"color":"gold"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:stone_sword",Count:1b,tag:{rab_old_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Knife","italic":false,"color":"gray"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:stone_sword",Count:1b,tag:{rab_old_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Knife","italic":false,"color":"gray"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:stone_sword",Count:1b,tag:{rab_old_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Knife","italic":false,"color":"gray"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Baseball Cap","italic":false,"color":"gray"}]',color:4863}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Baseball Cap","italic":false,"color":"gray"}]',color:4863}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Tattered Shirt","italic":false,"color":"#9c5f62"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Jeans","italic":false,"color":"#395795"}]',color:3757973}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Jeans","italic":false,"color":"#395795"}]',color:3757973}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Dress Shoes","italic":false,"color":"dark_gray"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:stone_axe",Count:1b,tag:{rab_old_melee:1,Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Axe","italic":false,"color":"white"}]'}}}}
summon item 16000 60 0 {NoGravity:1b,Tags:["rab_old_item","rab_old_die"],Item:{id:"minecraft:flint",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5}],HideFlags:63,display:{Name:'[{"text":"Sharp Rock","italic":false,"color":"dark_gray"}]'}}}}



execute as @e[type=area_effect_cloud,tag=rab_old_item_spawn] at @s run function scenario:steal_a_gem_old/spawn_item
kill @e[type=area_effect_cloud,tag=rab_old_item_spawn]


#general start:
scoreboard players set $time rab_old_timer 1800
scoreboard players set $rab_old active_scenario 1
scoreboard players reset @a[tag=playing,team=rab_old] death
function scenario:steal_a_gem_old/active
bossbar set steal_a_gem_old:suspicion visible true

execute as @e[tag=rab_old_ai_on_start] at @s run data merge entity @s {NoAI:0}
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem [CLASSIC]",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue rab_old_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem [CLASSIC]",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow rab_old_seconds
item replace entity @a[team=rab_old] hotbar.1 with wooden_sword{HideFlags:63,rab_old_melee:1,display:{Name:'{"text":"Sharp Stick","color":"gold","italic":false}'},Unbreakable:1}
title @a[team=rab_old] times 0 20 5
forceload remove 15950 9 15901 -26
scoreboard players set $door rab_old_timer 0 
scoreboard players set $gem rab_old_timer 0


tellraw @a[team=rab_old] [{"text":"Reminder: ","color":"green","bold":true},{"text":"This scenario uses default PvP.","color":"gray","bold":false}]