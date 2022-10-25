scoreboard players remove $time rab_old_timer 1
scoreboard players operation : rab_old_timer = $time rab_old_timer
scoreboard players operation : rab_old_timer /= $20 number
scoreboard players add : rab_old_timer 1
execute unless score : rab_old_timer = : rab_old_seconds run scoreboard players operation : rab_old_seconds = : rab_old_timer

execute if score $rab_old active_scenario matches 1 if score $time rab_old_timer matches 1.. run schedule function scenario:steal_a_gem_old/active 1t
execute if score $rab_old active_scenario matches 1 unless entity @a[team=rab_old] run function scenario:steal_a_gem_old/end

execute if score $number rab_old_bar matches ..299 run title @a[team=rab_old,nbt={SelectedItem:{tag:{rab_old_melee:1}}},gamemode=adventure] title {"text":" "}
execute if score $number rab_old_bar matches ..299 run title @a[team=rab_old,nbt={SelectedItem:{tag:{rab_old_melee:1}}},gamemode=adventure] subtitle {"text":"Keep this weapon concealed when possible.","color":"yellow"}

execute if block 15926 71 2 stone_button[powered=true] unless score $time rab_old_elevator matches 1.. run function scenario:steal_a_gem_old/ele_down
execute if block 15926 63 2 stone_button[powered=true] unless score $time rab_old_elevator matches 1.. run function scenario:steal_a_gem_old/ele_up

execute if block 15928 71 2 stone_button[powered=true] unless score $time rab_old_elevator matches 1.. if entity @e[type=area_effect_cloud,tag=rab_old_elevator,tag=rab_old_down] run function scenario:steal_a_gem_old/ele_up
execute if block 15928 63 2 stone_button[powered=true] unless score $time rab_old_elevator matches 1.. if entity @e[type=area_effect_cloud,tag=rab_old_elevator,tag=rab_old_up] run function scenario:steal_a_gem_old/ele_down

##execute as @a[team=rab_old] at @s if block ~ ~-2 ~ red_sandstone unless score $time rab_old_elevator matches 50.. if block 15926 71 2 stone_button[powered=true] run function scenario:steal_a_gem_old/ele_down
##execute as @a[team=rab_old] at @s if block ~ ~-2 ~ red_sandstone unless score $time rab_old_elevator matches 50.. if block 15926 63 2 stone_button[powered=true] run function scenario:steal_a_gem_old/ele_up
##execute as @a[team=rab_old] at @s if block ~ ~-3 ~ red_sandstone unless score $time rab_old_elevator matches 50.. if block 15926 71 2 stone_button[powered=true] run function scenario:steal_a_gem_old/ele_down
##execute as @a[team=rab_old] at @s if block ~ ~-3 ~ red_sandstone unless score $time rab_old_elevator matches 50.. if block 15926 63 2 stone_button[powered=true] run function scenario:steal_a_gem_old/ele_up
execute if score $time rab_old_elevator matches 1.. run function scenario:steal_a_gem_old/elevator

execute if entity @a[team=rab_old,x=15936,y=62,z=0,distance=..20] if score $number rab_old_bar matches ..299 run particle dust 1 0 0 1 15936 62.5 0 0 0 7 0 2
execute if entity @a[team=rab_old,x=15936,y=62,z=0,distance=..20] if score $number rab_old_bar matches ..299 run particle dust 1 0 0 1 15936 63.5 0 0 0 7 0 2

kill @e[type=experience_orb,x=16000,y=66,z=0,distance=..300]

execute as @a[team=rab_old,gamemode=adventure] at @s as @e[tag=rab_old_guard,distance=..8,tag=!rab_old_equipped,tag=!rab_old_no_tp,tag=!rab_old_lookout] at @s run tp @s ~ ~ ~ facing entity @p[team=rab_old]
execute as @a[team=rab_old,gamemode=adventure] at @s at @e[tag=rab_old_guard,distance=..9,tag=!rab_old_equipped,tag=rab_old_lookout,tag=!rab_old_no_tp] rotated as @e[tag=rab_old_guard,tag=rab_old_lookout,sort=nearest,limit=1] positioned ^ ^ ^2 if entity @s[distance=..6] positioned ^ ^ ^-2 as @e[tag=rab_old_guard,tag=rab_old_lookout,sort=nearest,limit=1] run tag @s add rab_old_stop_movement
execute at @a[team=rab_old,gamemode=adventure] as @e[tag=rab_old_guard,distance=..8,tag=!rab_old_equipped,tag=!rab_old_lookout] at @s run function scenario:steal_a_gem_old/guard_view
execute at @a[team=rab_old,gamemode=adventure] as @e[tag=rab_old_guard,distance=..8,tag=!rab_old_equipped,tag=rab_old_lookout,tag=rab_old_stop_movement] at @s run function scenario:steal_a_gem_old/guard_view
effect give @e[tag=rab_old_guard,tag=!rab_old_move,tag=!rab_old_equipped,tag=!rab_old_lookout] slowness 1 255 true
execute as @a[team=rab_old,gamemode=adventure] at @s as @e[tag=rab_old_guard,distance=..8,tag=!rab_old_equipped,tag=rab_old_stop_movement] at @s run tp @s ~ ~ ~ facing entity @p[team=rab_old]
effect give @e[tag=rab_old_guard,tag=rab_old_stop_movement,tag=!rab_old_equipped] slowness 1 255 true

execute as @e[type=zombie,tag=rab_old_guard,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 0.75

clear @a[tag=playing,team=rab_old] glass_bottle

#vault interaction:
execute positioned 15945 64 0 if block ~ ~ ~ minecraft:chiseled_stone_bricks if entity @a[tag=playing,team=rab_old,y=61,dy=6,x=15937,dx=8,z=-7,dz=15,gamemode=adventure] run function scenario:steal_a_gem_old/open_vault

execute unless block 15945 64 0 chiseled_stone_bricks if entity @e[type=armor_stand,tag=rab_old_gem] run title @a[x=15953,y=59,z=0,distance=..6,tag=playing,team=rab_old,gamemode=adventure] title [{"text":" "}]
execute unless block 15945 64 0 chiseled_stone_bricks if entity @e[type=armor_stand,tag=rab_old_gem] run title @a[x=15953,y=59,z=0,distance=..6,tag=playing,team=rab_old,gamemode=adventure] subtitle [{"text":"Right-click the gem!","color":"aqua"}]

execute as @a[tag=playing,team=rab_old,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_old_gem:1}}]},tag=!rab_old_hold_gem,gamemode=adventure] at @s if entity @e[tag=rab_old_gem] run title @a[tag=playing,team=rab_old,gamemode=adventure] title [{"text":"Get to the truck!","color":"gold"}]
execute as @a[tag=playing,team=rab_old,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_old_gem:1}}]},tag=!rab_old_hold_gem,gamemode=adventure] at @s if entity @e[tag=rab_old_gem] run title @a[tag=playing,team=rab_old,gamemode=adventure] subtitle [{"text":" "}]
execute as @e[type=armor_stand,tag=rab_old_gem] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:player_head"}]}] run kill @s

execute as @a[tag=playing,team=rab_old,tag=rab_old_hold_gem] unless entity @s[nbt={Inventory:[{tag:{rab_old_gem:1}}]}] run tag @s remove rab_old_hold_gem 
execute as @a[tag=playing,team=rab_old,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_old_gem:1}}]},tag=!rab_old_hold_gem,gamemode=adventure] at @s run function scenario:steal_a_gem_old/pickup_gem
##

execute store result bossbar steal_a_gem_old:suspicion value run scoreboard players get $number rab_old_bar





effect give @e[tag=rab_old_guard,type=zombie,tag=!rab_old_equipped] weakness 1 255 true
execute if entity @e[tag=rab_old_guard,type=zombie,tag=!rab_old_equipped] if score $number rab_old_bar matches 300.. run function scenario:steal_a_gem_old/activate_alarm
execute if score $number rab_old_bar matches 300.. run function scenario:steal_a_gem_old/summon


execute if entity @a[team=rab_old,scores={rab_old_dealt=1..},gamemode=adventure] run scoreboard players set $number rab_old_bar 300

execute if entity @a[x=15936,y=62,z=-7,dz=14,dy=1,team=rab_old,gamemode=adventure] run scoreboard players set $number rab_old_bar 300

execute if score $number rab_old_bar matches ..299 run scoreboard players add $cooldown rab_old_timer 1
execute if score $number rab_old_bar matches ..299 if score $cooldown rab_old_timer matches 10 if score $number rab_old_bar matches 1.. run scoreboard players remove $number rab_old_bar 1
execute if score $number rab_old_bar matches ..299 if score $cooldown rab_old_timer matches 10 run scoreboard players set $cooldown rab_old_timer 0

execute if score $number rab_old_alarm_set matches 1 run function scenario:steal_a_gem_old/sound


execute as @e[tag=rab_old_lookout,type=zombie,tag=rab_old_move_z,tag=!rab_old_stop_movement] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.25d],Rotation:[0.0f,0.0f]}
execute as @e[tag=rab_old_lookout,type=zombie,tag=!rab_old_move_z,tag=!rab_old_stop_movement] at @s run data merge entity @s {Motion:[0.0d,0.0d,-0.25d],Rotation:[180.0f,0.0f]}

execute as @e[tag=rab_old_lookout,tag=rab_old_lookout_1,type=zombie] at @s at @s[z=-15,distance=..1] run tag @s add rab_old_move_z
execute as @e[tag=rab_old_lookout,tag=rab_old_lookout_1,type=zombie] at @s at @s[z=13,distance=..1] run tag @s remove rab_old_move_z

execute as @e[tag=rab_old_lookout,tag=rab_old_lookout_2,type=zombie] at @s at @s[z=-19,distance=..1] run tag @s add rab_old_move_z
execute as @e[tag=rab_old_lookout,tag=rab_old_lookout_2,type=zombie] at @s at @s[z=19,distance=..1] run tag @s remove rab_old_move_z

tag @e[tag=rab_old_lookout,type=zombie] remove rab_old_stop_movement




##dropping gem:
 
execute as @a[team=rab_old,gamemode=adventure,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_old_gem:1}}]},scores={death=1..}] at @s run function scenario:steal_a_gem_old/drop_gem

execute as @e[type=item,nbt={Item:{tag:{rab_old_gem:1}}}] at @s run function scenario:steal_a_gem_old/dropped_gem

execute as @a[team=rab_old,gamemode=adventure] at @s store result score @s rab_old_x run data get entity @s Pos[0] 100
execute as @a[team=rab_old,gamemode=adventure] at @s store result score @s rab_old_y run data get entity @s Pos[1] 100
execute as @a[team=rab_old,gamemode=adventure] at @s store result score @s rab_old_z run data get entity @s Pos[2] 100



#tracker:

execute if score $number rab_old_bar matches 300.. as @a[tag=playing,team=rab_old,gamemode=adventure,scores={rab_old_y=6800..}] at @s unless entity @e[type=armor_stand,tag=rab_old_gem] run function scenario:steal_a_gem_old/call_tracker

##tasks:
execute if score $number rab_old_bar matches ..299 run title @a[tag=playing,team=rab_old,gamemode=adventure,scores={rab_old_y=6900..}] actionbar [{"text":"Current Task: ","color":"dark_aqua"},{"text":"Loot up then get to the elevator at the back of the bank.","color":"aqua"}]
execute if entity @e[type=armor_stand,tag=rab_old_gem] run title @a[tag=playing,team=rab_old,gamemode=adventure,scores={rab_old_y=..6800}] actionbar [{"text":"Current Task: ","color":"dark_aqua"},{"text":"Run to the vault and grab the gem inside.","color":"aqua"}]
execute if score $number rab_old_bar matches 300.. if entity @e[type=armor_stand,tag=rab_old_gem] run title @a[tag=playing,team=rab_old,gamemode=adventure,scores={rab_old_y=6900..}] actionbar [{"text":"Current Task: ","color":"dark_aqua"},{"text":"Get to the elevator at the back of the bank.","color":"aqua"}]
execute if score $number rab_old_bar matches 300.. unless entity @e[type=armor_stand,tag=rab_old_gem] if score $gem rab_old_timer matches 0 run title @a[tag=playing,team=rab_old,gamemode=adventure] actionbar [{"text":"Current Task: ","color":"dark_aqua"},{"text":"Escort the gem to the truck.","color":"aqua"}]
execute if score $number rab_old_bar matches 300.. unless entity @e[type=armor_stand,tag=rab_old_gem] if score $gem rab_old_timer matches 1 run title @a[tag=playing,team=rab_old,gamemode=adventure] actionbar [{"text":"Current Task: ","color":"dark_aqua"},{"text":"Get in the truck.","color":"aqua"}]

##truck sound:
execute if score $number rab_old_bar matches 300.. unless entity @e[type=armor_stand,tag=rab_old_gem] run scoreboard players add $truck rab_old_timer 1
execute if score $number rab_old_bar matches 300.. unless entity @e[type=armor_stand,tag=rab_old_gem] if score $truck rab_old_timer matches 3 run function scenario:steal_a_gem_old/truck_sound

execute if score $time rab_old_timer matches 0 as @a[team=rab_old,gamemode=adventure] at @s run function scenario:steal_a_gem_old/fail
execute as @a[team=rab_old,gamemode=adventure,scores={death=1..}] at @s run function scenario:steal_a_gem_old/fail
execute if entity @a[tag=playing,team=rab_old,distance=..1.5,x=15931,y=72,z=-26,gamemode=adventure,nbt={OnGround:1b,Inventory:[{tag:{rab_old_gem:1}}]}] run scoreboard players set $gem rab_old_timer 1
execute if score $gem rab_old_timer matches 1 as @a[tag=playing,team=rab_old,distance=..2.4,x=15931,y=72.1,z=-27,gamemode=adventure,nbt={OnGround:1b}] at @s run function scenario:steal_a_gem_old/success




#truck door animation:
execute if entity @a[tag=playing,team=rab_old,distance=..8,x=15931,y=72,z=-26,gamemode=adventure,nbt={Inventory:[{tag:{rab_old_gem:1}}]}] if score $door rab_old_timer matches 0 run scoreboard players set $door rab_old_timer 1
execute if score $door rab_old_timer matches 1.. run function scenario:steal_a_gem_old/truck_door