scoreboard players remove $time sitw_timer 1

scoreboard players operation : sitw_timer = $time sitw_timer
scoreboard players operation : sitw_timer /= $20 number
scoreboard players add : sitw_timer 1
execute unless score : sitw_timer = : sitw_seconds run scoreboard players operation : sitw_seconds = : sitw_timer



scoreboard players remove $time campfire_bar 2

#purpose is to make the campfire go down slower at the start.
execute if score $time sitw_timer matches 2200.. run scoreboard players add $time campfire_bar 1

execute store result bossbar survive_in_the_wilderness:campfire value run scoreboard players get $time campfire_bar
execute if score $sitw active_scenario matches 1 if score $time sitw_timer matches 1.. run schedule function scenario:survive_in_the_wilderness/active 1t
execute if score $sitw active_scenario matches 1 unless entity @a[team=sitw] run function scenario:survive_in_the_wilderness/end


execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] store result score $count sitw_count run data get entity @s Item.Count
execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run scoreboard players operation $count sitw_count *= $260 number
execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run scoreboard players operation $time campfire_bar += $count sitw_count
execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1
execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run kill @s

execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run scoreboard players add $time campfire_bar 60
execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1
execute if score $time campfire_bar matches 0.. as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"},OnGround:1b},distance=..1,x=1003,y=65,z=-7] at @s if entity @s[y=65.43750,dy=0] run kill @s

execute if score $time campfire_bar matches 1000.. run scoreboard players set $time campfire_bar 1000

execute if score $time campfire_bar matches -1..0 if block 1003 65 -7 campfire{Items:[{id:"minecraft:mutton"}]} run summon item 1003 66 -7 {Item:{id:"minecraft:charcoal",Count:1b,tag:{display:{Name:"{\"text\":\"Burnt Meat\",\"color\":\"dark_gray\",\"italic\":false}"}}},Motion:[0.0d,0.2d,0.0d]}
execute if score $time campfire_bar matches -1..0 run setblock 1003 65 -7 air
execute if score $time campfire_bar matches -1..0 run setblock 1003 65 -7 campfire[facing=east,lit=false]
execute if score $time campfire_bar matches -1..0 run tellraw @a[tag=playing,team=sitw] {"text":"The campfire has been extinguished!","color":"gold"}
execute if score $time campfire_bar matches -1..0 as @a[tag=playing,team=sitw] at @s run playsound minecraft:block.bamboo.fall master @s ~ ~ ~ 2 0
execute if score $time campfire_bar matches -1..0 run playsound minecraft:block.fire.extinguish master @a 1003 65 -7 1 0.9

execute as @a[team=sitw,tag=playing] at @s run scoreboard players operation @s sitw_hunger = @s sitw_hunger_f
scoreboard players set @a[team=sitw,scores={sitw_hunger_f=0}] sitw_hunger 20



execute if score $time campfire_bar matches 1.. run title @a[team=sitw,nbt={SelectedItem:{id:"minecraft:stick"}},gamemode=adventure] title {"text":" "}
execute if score $time campfire_bar matches 1.. run title @a[team=sitw,nbt={SelectedItem:{id:"minecraft:stick"}},gamemode=adventure] subtitle {"text":"Drop on the campfire to extend the flame!","color":"yellow"}

execute if score $time campfire_bar matches 1.. run title @a[team=sitw,nbt={SelectedItem:{id:"minecraft:mutton"}},gamemode=adventure] title {"text":" "}
execute if score $time campfire_bar matches 1.. run title @a[team=sitw,nbt={SelectedItem:{id:"minecraft:mutton"}},gamemode=adventure] subtitle [{"text":"Press ","color":"red"},{"keybind":"key.use","color":"red"},{"text":" on campfire to cook.","color":"red"}]

execute as @a[tag=playing,team=sitw,gamemode=adventure] at @s run title @s actionbar [{"text":"| Warmth: ","color":"red"},{"score":{"objective":"sitw_heat","name":"@s"},"color":"red"},{"text":"/10","color":"red"},{"text":" | Hunger: ","color":"gold"},{"score":{"objective":"sitw_d_hunger","name":"@s"},"color":"gold"},{"text":"/20","color":"gold"},{"text":" | Thirst: ","color":"blue"},{"score":{"objective":"sitw_thirst","name":"@s"},"color":"blue"},{"text":"/15","color":"blue"}]
execute as @a[tag=playing,team=sitw] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @s ~ ~ ~ 0.025 2

scoreboard players remove @a[team=sitw,gamemode=adventure] sitw_heat_cool 1
execute as @a[team=sitw,scores={sitw_heat_cool=..0},gamemode=adventure] at @s run function scenario:survive_in_the_wilderness/check_heat



scoreboard players remove @a[team=sitw,gamemode=adventure] sitw_thirst_cool 1
execute as @a[team=sitw,scores={sitw_thirst_cool=..0},gamemode=adventure] at @s run function scenario:survive_in_the_wilderness/check_thirst


scoreboard players remove @a[team=sitw,gamemode=adventure] sitw_hunger_cool 1
execute as @a[team=sitw,scores={sitw_hunger_cool=..0},gamemode=adventure] at @s run function scenario:survive_in_the_wilderness/check_hunger


execute if score $time campfire_bar matches 0.. as @a[team=sitw,x=1003,y=65,z=-7,distance=..5,scores={sitw_heat=..9}] at @s run scoreboard players add @s sitw_heat 1
execute if score $time campfire_bar matches 0.. as @a[team=sitw,x=1003,y=65,z=-7,distance=..5] at @s run scoreboard players set @s sitw_heat_cool 70

execute as @a[team=sitw,scores={sitw_drink=1..}] at @s run scoreboard players set @s sitw_thirst 15
execute as @a[team=sitw,scores={sitw_drink=1..}] at @s run scoreboard players set @s sitw_drink 0
execute as @a[team=sitw,scores={sitw_carrot=1..}] at @s run scoreboard players add @s sitw_d_hunger 3
execute as @a[team=sitw,scores={sitw_carrot=1..}] at @s run scoreboard players set @s sitw_carrot 0
execute as @a[team=sitw,scores={sitw_mutton=1..}] at @s run scoreboard players add @s sitw_d_hunger 2
execute as @a[team=sitw,scores={sitw_mutton=1..}] at @s run scoreboard players set @s sitw_mutton 0
execute as @a[team=sitw,scores={sitw_c_mutton=1..}] at @s run scoreboard players add @s sitw_d_hunger 6
execute as @a[team=sitw,scores={sitw_c_mutton=1..}] at @s run scoreboard players set @s sitw_c_mutton 0
execute as @a[team=sitw,scores={sitw_honey=1..}] at @s run scoreboard players set @s sitw_thirst 18
execute as @a[team=sitw,scores={sitw_honey=1..}] at @s run scoreboard players set @s sitw_honey 0
scoreboard players set @a[scores={sitw_d_hunger=20..}] sitw_d_hunger 20


effect give @a[scores={sitw_d_hunger=0},team=sitw,gamemode=adventure] blindness 2 255 true
effect give @a[scores={sitw_heat=0},team=sitw,gamemode=adventure] slowness 1 1 true
effect give @a[scores={sitw_thirst=0},team=sitw,gamemode=adventure] nausea 5 255 true

scoreboard players set @a sitw_param 0
execute as @a[team=sitw,scores={sitw_d_hunger=1..},gamemode=adventure] at @s run scoreboard players add @s sitw_param 1
execute as @a[team=sitw,scores={sitw_heat=1..},gamemode=adventure] at @s run scoreboard players add @s sitw_param 1
execute as @a[team=sitw,scores={sitw_thirst=1..},gamemode=adventure] at @s run scoreboard players add @s sitw_param 1
effect give @a[team=sitw,scores={sitw_param=..1},gamemode=adventure] wither 1 3 true
effect clear @a[team=sitw,scores={sitw_param=2..},gamemode=adventure] wither
title @a[team=sitw,scores={sitw_param=..1},gamemode=adventure] title {"text":" "}
title @a[team=sitw,scores={sitw_param=..1},gamemode=adventure] subtitle {"text":"Life functions failing . . .","color":"red"}
execute as @a[team=sitw,gamemode=adventure] at @s run kill @e[type=minecraft:experience_orb,distance=..15]
execute as @a[team=sitw,gamemode=adventure] at @s run scoreboard players operation @s sitw_check_hung = @s sitw_d_hunger
scoreboard players add @a[team=sitw,gamemode=adventure] sitw_check_hung 1
execute as @a[team=sitw,gamemode=adventure] at @s run scoreboard players operation @s sitw_check_hung -= @s sitw_hunger
execute as @a[team=sitw,gamemode=adventure] at @s if entity @s[scores={sitw_check_hung=..0}] run effect give @s hunger 1 255 true
execute as @a[team=sitw,gamemode=adventure] at @s if entity @s[scores={sitw_check_hung=0}] run effect clear @s hunger

scoreboard players remove $time sitw_stick 1
execute if score $time sitw_stick matches 0 at @a[team=sitw,limit=1,tag=playing] as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute if score $time sitw_stick matches ..0 run scoreboard players set $time sitw_stick 40

scoreboard players remove $time sitw_ambient 1
execute if score $time sitw_ambient matches ..0 as @r at @s run function scenario:survive_in_the_wilderness/random
execute if score $time sitw_ambient matches ..0 if score $rand sitw_random matches 1..5 as @a[tag=playing,tag=sitw] at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.05 0
execute if score $time sitw_ambient matches ..0 run scoreboard players set $time sitw_ambient 140

execute as @a[team=sitw,scores={death=1..},gamemode=adventure] run function scenario:survive_in_the_wilderness/fail
execute if score $time sitw_timer matches 0 as @a[tag=playing,team=sitw,gamemode=adventure] at @s run function scenario:survive_in_the_wilderness/success
execute as @e[tag=sitw_bear,type=skeleton] at @s if entity @a[team=sitw,distance=..7.5] run scoreboard players add @s sitw_bear 1
execute as @e[tag=sitw_bear,type=skeleton,scores={sitw_bear=1}] at @s run playsound minecraft:entity.ender_dragon.growl master @a[tag=playing,team=sitw] ~ ~ ~ 1 0.7

execute as @a[tag=playing,team=sitw,gamemode=adventure,scores={sitw_heat_cool=20..}] at @s if block ~ ~ ~ water run scoreboard players set @s sitw_heat_cool 19
particle minecraft:cloud 971 67 22 1.5 1 1.5 0.05 10