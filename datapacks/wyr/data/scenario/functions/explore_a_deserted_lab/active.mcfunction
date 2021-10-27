#timer:
scoreboard players remove $time eadl_timer 1
scoreboard players operation : eadl_timer = $time eadl_timer
scoreboard players operation : eadl_timer /= $20 number
scoreboard players add : eadl_timer 1
execute unless score : eadl_timer = : eadl_seconds run scoreboard players operation : eadl_seconds = : eadl_timer

execute as @e[tag=eadl_actual_skull,type=area_effect_cloud,tag=!eadl_eadl_spawned_skeleton] at @s if entity @a[tag=playing,gamemode=adventure,team=eadl,distance=..4] run function scenario:explore_a_deserted_lab/summon_skeleton

scoreboard players remove @a[tag=playing,gamemode=adventure,team=eadl] eadl_beep 1

execute as @a[scores={eadl_beep=..0},tag=playing,gamemode=adventure,team=eadl] at @s run function scenario:explore_a_deserted_lab/beep

execute as @e[type=zombie,tag=eadl_die] at @s run particle minecraft:campfire_cosy_smoke ~ ~.25 ~ 0 1 0 0.1 1

execute as @e[type=zombie,tag=eadl_die,x=8007,y=53,z=25,dx=4,dy=3,dz=1] at @s run tp @s ~ ~ 25

execute as @e[type=zombie,tag=eadl_die,x=8035,y=53,z=5,dx=0,dy=6,dz=9] at @s run tp @s 8036 ~ ~

execute if score $time eadl_timer matches 0 run function scenario:explore_a_deserted_lab/timer_over

execute as @a[tag=playing,team=eadl,gamemode=adventure] at @s if entity @e[type=area_effect_cloud,tag=eadl_repeater,distance=..1.5] unless entity @s[scores={eadl_1=1}] unless entity @s[scores={eadl_2=1}] unless entity @s[scores={eadl_3=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:repeater"}]}] run function scenario:explore_a_deserted_lab/pickup_repeater
execute as @a[tag=playing,team=eadl,gamemode=adventure] at @s if entity @e[type=area_effect_cloud,tag=eadl_torch,distance=..1.5] unless entity @s[scores={eadl_1=2}] unless entity @s[scores={eadl_2=2}] unless entity @s[scores={eadl_3=2}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_torch"}]}] run function scenario:explore_a_deserted_lab/pickup_torch
execute as @a[tag=playing,team=eadl,gamemode=adventure] at @s if entity @e[type=area_effect_cloud,tag=eadl_dust,distance=..1.5] unless entity @s[scores={eadl_1=3}] unless entity @s[scores={eadl_2=3}] unless entity @s[scores={eadl_3=3}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone"}]}] run function scenario:explore_a_deserted_lab/pickup_redstone

execute as @a[tag=playing,team=eadl,gamemode=adventure,scores={eadl_1=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,tag:{eadl:1}}]}] run function scenario:explore_a_deserted_lab/get_slot_1
execute as @a[tag=playing,team=eadl,gamemode=adventure,scores={eadl_2=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:1b,tag:{eadl:2}}]}] run function scenario:explore_a_deserted_lab/get_slot_2
execute as @a[tag=playing,team=eadl,gamemode=adventure,scores={eadl_3=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:2b,tag:{eadl:3}}]}] run function scenario:explore_a_deserted_lab/get_slot_3

execute as @a[x=7998,y=55,z=-10,dx=25,dy=20,dz=18,tag=playing,team=eadl,gamemode=adventure,nbt={OnGround:1b}] at @s unless block 8010 56 1 air unless block 8011 56 -1 air unless block 8010 56 -3 air unless block ~ ~-1 ~ packed_ice unless block ~ ~-1 ~ blue_ice unless block ~ ~-1 ~ air run function scenario:explore_a_deserted_lab/success
execute as @a[tag=playing,team=eadl,gamemode=adventure,scores={death=1..}] at @s run function scenario:explore_a_deserted_lab/fail
execute as @a[tag=playing,team=eadl,gamemode=adventure] at @s if block ~ ~ ~ water run function scenario:explore_a_deserted_lab/in_water

execute if score $eadl active_scenario matches 1 if score $time eadl_timer matches 1.. run schedule function scenario:explore_a_deserted_lab/active 1t
execute if score $eadl active_scenario matches 1 unless entity @a[team=eadl] run function scenario:explore_a_deserted_lab/end

# clearing items if they're placed

execute if block 8010 56 1 redstone_torch run clear @a[team=eadl] redstone_torch
execute if block 8010 56 1 redstone_wire run clear @a[team=eadl] redstone
execute if block 8010 56 1 repeater run clear @a[team=eadl] repeater

execute if block 8011 56 -1 redstone_torch run clear @a[team=eadl] redstone_torch
execute if block 8011 56 -1 redstone_wire run clear @a[team=eadl] redstone
execute if block 8011 56 -1 repeater run clear @a[team=eadl] repeater

execute if block 8010 56 -3 redstone_torch run clear @a[team=eadl] redstone_torch
execute if block 8010 56 -3 redstone_wire run clear @a[team=eadl] redstone
execute if block 8010 56 -3 repeater run clear @a[team=eadl] repeater


