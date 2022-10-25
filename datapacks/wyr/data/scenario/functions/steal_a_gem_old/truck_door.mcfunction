
#start:
execute if score $door rab_old_timer matches 1 run kill @e[type=area_effect_cloud,tag=rab_old_truck_door]
execute if score $door rab_old_timer matches 1 run summon area_effect_cloud 15931 71 -26 {Tags:["rab_old_truck_door"],Duration:1000}
execute if score $door rab_old_timer matches 1 run fill 15931 71 -26 15931 72 -27 barrier


scoreboard players add $door rab_old_timer 1

#falling blocks
kill @e[type=falling_block,tag=rab_old_die]
execute as @e[tag=rab_old_truck_door,type=area_effect_cloud] at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["rab_old_die"],Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_trapdoor",Properties:{facing:"south",open:"true"}},NoGravity:1b}
execute as @e[tag=rab_old_truck_door,type=area_effect_cloud] at @s run summon minecraft:falling_block ~ ~1 ~ {Tags:["rab_old_die"],Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_trapdoor",Properties:{facing:"south",open:"true"}},NoGravity:1b}
execute as @e[tag=rab_old_truck_door,type=area_effect_cloud] at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["rab_old_die"],Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_trapdoor",Properties:{facing:"south",open:"true"}},NoGravity:1b}
execute as @e[tag=rab_old_truck_door,type=area_effect_cloud] at @s run summon minecraft:falling_block ~ ~1 ~ {Tags:["rab_old_die"],Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_trapdoor",Properties:{facing:"south",open:"true"}},NoGravity:1b}


#teleports:
execute if score $door rab_old_timer matches 1..26 as @e[type=area_effect_cloud,tag=rab_old_truck_door] at @s run tp @s ~ ~ ~.04

execute if score $door rab_old_timer matches 34..58 as @e[type=area_effect_cloud,tag=rab_old_truck_door] at @s run tp @s ~-0.04 ~ ~
execute if score $door rab_old_timer matches 58 run kill @e[type=falling_block,tag=rab_old_die]
execute if score $door rab_old_timer matches 58 run kill @e[type=area_effect_cloud,tag=rab_old_truck_door]
execute if score $door rab_old_timer matches 59 run fill 15931 71 -26 15931 72 -27 air replace barrier
execute if score $door rab_old_timer matches 59 run fill 15930 71 -25 15930 72 -25 minecraft:iron_trapdoor[open=true,facing=south] destroy
execute if score $door rab_old_timer matches 59 run scoreboard players set $door rab_old_timer -1
