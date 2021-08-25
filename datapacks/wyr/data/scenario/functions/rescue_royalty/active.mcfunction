#timer:
scoreboard players remove $time rap_timer 1
scoreboard players operation : rap_timer = $time rap_timer
scoreboard players operation : rap_timer /= $20 number
scoreboard players add : rap_timer 1
execute unless score : rap_timer = : rap_seconds run scoreboard players operation : rap_seconds = : rap_timer





#activity:
execute if score $rap active_scenario matches 1 if score $time rap_timer matches 1.. run schedule function scenario:rescue_royalty/active 1t
execute if score $rap active_scenario matches 1 unless entity @a[team=rap] run function scenario:rescue_royalty/end


execute as @e[type=armor_stand,tag=rap_royalty] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,tag=playing,team=rap]

kill @e[type=experience_orb,x=5000,y=66,z=0,distance=..500]

execute as @a[tag=playing,gamemode=adventure,team=rap,scores={rap_kill=1..}] at @s run function scenario:rescue_royalty/kill_mob


execute as @e[type=ghast,x=5000,y=66,z=0,distance=100..,tag=rap_enemy] at @s run function scenario:rescue_royalty/kill_ghast


execute as @a[tag=playing,gamemode=adventure,team=rap] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:paper"}]}] run function scenario:rescue_royalty/get_paper


execute as @a[tag=playing,gamemode=adventure,team=rap,nbt={SelectedItem:{id:"minecraft:paper"}}] at @s run function scenario:rescue_royalty/call_tracker


execute as @a[tag=playing,team=rap,gamemode=adventure,x=5092,y=84,z=11,distance=..5,nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] at @s run fill 5092 85 11 5092 86 11 air destroy

execute as @a[tag=playing,team=rap,gamemode=adventure,x=5092,y=84,z=-7,distance=..5,nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] at @s run fill 5092 85 -7 5092 86 -7 air destroy


execute as @a[tag=playing,team=rap,gamemode=adventure] at @s run kill @s[y=38,distance=..10]

execute as @a[tag=playing,team=rap,gamemode=adventure,scores={death=1..}] at @s run function scenario:rescue_royalty/die

execute as @a[tag=playing,team=rap,gamemode=adventure] at @s store result score @s rap_x run data get entity @s Pos[0] 100
execute as @a[tag=playing,team=rap,gamemode=adventure] at @s store result score @s rap_y run data get entity @s Pos[1] 100
execute as @a[tag=playing,team=rap,gamemode=adventure] at @s store result score @s rap_z run data get entity @s Pos[2] 100



execute if score $time rap_timer matches 0 run function scenario:rescue_royalty/timer_over

tag @e[type=magma_cube,x=5000,y=66,z=0,distance=..500,tag=!rap_enemy] add rap_enemy

scoreboard players set $secure rap_timer 0
execute as @e[x=5087,y=84,z=-7,dy=10,dx=10,dz=17,tag=rap_enemy,type=!ghast] at @s if block ~ 1 ~ pink_concrete run scoreboard players add $secure rap_timer 1

execute as @a[x=5087,y=84,z=-7,dy=10,dx=10,dz=17,tag=playing,team=rap,gamemode=adventure] at @s if block ~ 1 ~ pink_concrete if score $secure rap_timer matches 0 run function scenario:rescue_royalty/success