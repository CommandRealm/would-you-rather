execute if score $time rab_elevator matches 500 run fill 15927 72 -382 15927 62 -380 minecraft:barrier replace air
execute if score $time rab_elevator matches 500 at @e[tag=rab_elevator] run setblock ~ ~1 ~1 smooth_stone_slab[type=double]
execute if score $time rab_elevator matches 500 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 497 at @e[tag=rab_elevator] run setblock ~ ~1 ~2 polished_andesite
execute if score $time rab_elevator matches 497 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 494 at @e[tag=rab_elevator] run setblock ~ ~ ~2 stone_bricks
execute if score $time rab_elevator matches 494 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 491 at @e[tag=rab_elevator] run setblock ~ ~ ~1 smooth_stone
execute if score $time rab_elevator matches 491 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 488 at @e[tag=rab_elevator] run setblock ~ ~ ~ stone_bricks
execute if score $time rab_elevator matches 488 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 485 at @e[tag=rab_elevator] run setblock ~ ~1 ~ polished_andesite
execute if score $time rab_elevator matches 485 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 482 at @e[tag=rab_elevator] run setblock ~ ~2 ~ stone_bricks
execute if score $time rab_elevator matches 482 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 479 at @e[tag=rab_elevator] run setblock ~ ~2 ~1 smooth_stone
execute if score $time rab_elevator matches 479 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 476 at @e[tag=rab_elevator] run setblock ~ ~2 ~2 stone_bricks
execute if score $time rab_elevator matches 476 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 460 run scoreboard players set $time rab_elevator 300

##execute if score $time rab_elevator matches 210 as @e[tag=rab_on_ele] at @s if entity @e[tag=rab_elevator,tag=rab_down,distance=..10] run tp @s ~ ~-8 ~
execute if score $time rab_elevator matches 210 as @e[tag=rab_elevator,tag=rab_down] at @s run tp @s ~ ~-8 ~

execute if score $time rab_elevator matches 210 as @a[team=rab,tag=rab_on_ele] at @s if entity @e[tag=rab_elevator,tag=rab_up,distance=..10] run tp @s ~ ~8 ~
execute if score $time rab_elevator matches 210 as @e[tag=rab_elevator,tag=rab_up] at @s run tp @s ~ ~8 ~

scoreboard players remove $time rab_elevator 1


execute if score $time rab_elevator matches 299 run playsound minecraft:block.piston.extend master @a[tag=!rab_on_ele] 15926 67 -381 1
execute if score $time rab_elevator matches 299 run playsound minecraft:block.piston.extend master @a[tag=rab_on_ele] 15926 67 -381 1000
execute if score $time rab_elevator matches 201..298 as @a[tag=playing,team=rab,tag=rab_on_ele] at @s run playsound minecraft:ambient.underwater.loop master @s ~ ~ ~ 0.75 0
execute if score $time rab_elevator matches 201..298 run playsound minecraft:ambient.underwater.loop master @a[x=15924,y=66,z=-381,distance=..9] 15926 67 -381 0.25 0

##purpose is to remove tag if they get out before the door closes.
execute if score $time rab_elevator matches 299 as @e[tag=rab_on_ele] at @s unless entity @s[x=15921,y=62,z=-385,dy=15,dx=5,dz=6,tag=rab_on_ele] run tag @s remove rab_on_ele
execute if score $time rab_elevator matches 299 run tag @e[x=15921,y=62,z=-385,dy=15,dx=5,dz=6,tag=!rab_on_ele] add rab_on_ele



execute if score $time rab_elevator matches 298 as @e[x=15922,y=70,z=-383,dx=5,dz=4,dy=5,type=!area_effect_cloud,tag=rab_on_ele] at @s run tp @s ~-15 ~-3 ~
execute if score $time rab_elevator matches 298 as @e[x=15922,y=62,z=-383,dx=5,dz=4,dy=5,type=!area_effect_cloud,tag=rab_on_ele] at @s run tp @s ~-15 ~5 ~



##purpose is to add tag if they get on before the door opens.
execute if score $time rab_elevator matches 200 run tag @a[x=15909,y=67,z=-381,distance=7..,tag=rab_on_ele] remove rab_on_ele
execute if score $time rab_elevator matches 200 run tag @e[x=15909,y=67,z=-381,distance=..6,tag=!rab_on_ele] add rab_on_ele

execute if score $time rab_elevator matches 200 run stopsound @a[tag=playing,team=rab] * minecraft:ambient.underwater.loop
execute if score $time rab_elevator matches 200 if entity @e[tag=rab_elevator,tag=rab_down] as @e[tag=rab_on_ele] at @s run tp @s ~15 ~-5 ~
execute if score $time rab_elevator matches 200 if entity @e[tag=rab_elevator,tag=rab_up] as @e[tag=rab_on_ele] at @s run tp @s ~15 ~3 ~
execute if score $time rab_elevator matches 200 run playsound minecraft:block.piston.extend master @a[tag=!rab_on_ele] 15926 67 -381 1
execute if score $time rab_elevator matches 200 run playsound minecraft:block.piston.extend master @a[tag=rab_on_ele] 15926 67 -381 1000
execute if score $time rab_elevator matches 200 run scoreboard players set $time rab_elevator 110

execute if score $time rab_elevator matches 110 run effect clear @a[team=rab]
execute if score $time rab_elevator matches 100 at @e[tag=rab_elevator] run setblock ~ ~1 ~1 air
execute if score $time rab_elevator matches 100 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 97 at @e[tag=rab_elevator] run setblock ~ ~1 ~2 air
execute if score $time rab_elevator matches 97 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 94 at @e[tag=rab_elevator] run setblock ~ ~ ~2 air
execute if score $time rab_elevator matches 94 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 91 at @e[tag=rab_elevator] run setblock ~ ~ ~1 air
execute if score $time rab_elevator matches 91 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 88 at @e[tag=rab_elevator] run setblock ~ ~ ~ air
execute if score $time rab_elevator matches 88 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 85 at @e[tag=rab_elevator] run setblock ~ ~1 ~ air
execute if score $time rab_elevator matches 85 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 82 at @e[tag=rab_elevator] run setblock ~ ~2 ~ air
execute if score $time rab_elevator matches 82 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 79 at @e[tag=rab_elevator] run setblock ~ ~2 ~1 air
execute if score $time rab_elevator matches 79 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1
execute if score $time rab_elevator matches 76 at @e[tag=rab_elevator] run setblock ~ ~2 ~2 air
execute if score $time rab_elevator matches 76 run playsound minecraft:block.stone.place master @a 15926 67 -381 1 1


execute if score $time rab_elevator matches 76 run tag @e[tag=rab_on_ele] remove rab_on_ele