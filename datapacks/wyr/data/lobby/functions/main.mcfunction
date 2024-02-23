#called from general:main
#purpose is running commands whenever someone is in the lobby
kill @e[type=item,nbt={Item:{tag:{die:1}}}]
execute as @a[tag=recently_joined] at @s if entity @s[x=-935,y=79,z=-155,distance=1..5] run function lobby:intro/start_intro
execute as @a[tag=recently_joined] at @s unless entity @s[x=-935,y=79,z=-155,distance=..5] run tag @s remove recently_joined
scoreboard players remove $time poster_time 1
execute if score $time poster_time matches ..0 run function lobby:posters/change_poster

kill @e[type=item,nbt={Item:{tag:{lobby_die:1}}}]
kill @e[type=item,nbt={Age:0s,Item:{tag:{lobby_die:0}}}]
item replace entity @a[tag=!playing,x=-1000,y=66,z=0,distance=..400,nbt={Inventory:[{Slot:103b,tag:{Gumball:1b}}]}] armor.head with air

execute as @a[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]}] at @s unless entity @s[scores={hunger=0}] run scoreboard players operation @s hunger = @s d_hunger
scoreboard players add @a hunger 0
scoreboard players set @a[scores={hunger=0}] hunger 20
execute if entity @a[tag=!playing,x=-1000,y=66,z=0,distance=..400,nbt={Inventory:[{tag:{vending_machine:1}}]}] run function lobby:machine/hunger
clear @a[tag=!playing,gamemode=adventure] glass_bottle
scoreboard players remove @e[type=area_effect_cloud,tag=vending_machine,scores={vending_machine=1..}] vending_machine 1
execute as @e[type=area_effect_cloud,tag=vending_machine,scores={vending_machine=0}] at @s if block ~ ~ ~ stone_button[powered=true] run function lobby:machine/pressed
execute if block -917 79 -146 lever[powered=true] positioned -917 79 -146 run function lobby:machine/check_lever
execute if block -953 79 -146 lever[powered=true] positioned -953 79 -146 run function lobby:machine/check_lever
execute if block -930 79 -149 crimson_button[powered=true] positioned -930 79 -149 run function lobby:machine/check_button

execute if entity @a[x=-950,y=74,z=-87,dx=30,dz=26,dy=7] run function lobby:tutorial/main
execute if entity @e[tag=lobby_text,type=area_effect_cloud] unless entity @a[x=-950,y=74,z=-87,dx=30,dz=26,dy=7] run kill @e[type=area_effect_cloud,tag=lobby_text]

execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~2 ~

# Tunnel warps
execute as @a[tag=!playing,gamemode=adventure,x=-1077,y=77,z=-242,distance=..10] at @s if entity @s[x=-1077,dx=-10] run effect give @s blindness 3 1 true
execute as @a[tag=!playing,gamemode=adventure,x=-788,y=77,z=-242,distance=..10] at @s if entity @s[x=-788,dx=10] run effect give @s blindness 3 1 true
execute as @a[tag=!playing,gamemode=adventure,x=-1077,y=77,z=-242,distance=..10] at @s if entity @s[x=-1077,dx=-10] run tp @s ~287 ~ ~ facing ~-10 ~ ~
execute as @a[tag=!playing,gamemode=adventure,x=-788,y=77,z=-242,distance=..10] at @s if entity @s[x=-788,dx=10] run tp @s ~-287 ~ ~ facing ~10 ~ ~

execute as @a[scores={open_echest=1..}] at @s run function chest_menu:open_echest
execute as @a[x=-1000,y=66,z=0,distance=..1000] at @s store result score @s chest_clear run clear @s #minecraft:chest_menu{clickable:1}
execute as @e[type=item,x=-1000,y=66,z=0,distance=..1000,nbt={Item:{tag:{clickable:1}}}] at @s run function chest_menu:dropped_item
execute as @a[x=-1000,y=66,z=0,distance=..1000,nbt={EnderItems:[{tag:{clickable:0}}]}] at @s run function chest_menu:reset_screen
execute as @a[scores={chest_clear=1..}] at @s run function chest_menu:click


effect give @a[tag=!playing,gamemode=adventure] weakness 2 255 true
effect give @a[tag=!playing,gamemode=adventure] resistance 2 255 true
clear @a[tag=!playing,gamemode=adventure] lead




##particles for tutorial
particle firework -932 80 -142 0.25 1 0.25 0.00 1
particle firework -938 80 -142 0.25 1 0.25 0.00 1
execute as @e[tag=spin,type=area_effect_cloud,limit=1] at @s positioned as @e[tag=teleporter,type=area_effect_cloud,tag=scenario_tp] run particle dust 1 1 0 1 ^ ^ ^1 0 0 0 0.0 3

execute as @e[tag=spin,type=area_effect_cloud,limit=1] at @s positioned as @e[tag=teleporter,type=area_effect_cloud,tag=tutorial_tp] run particle dust 0 0 1 1 ^ ^ ^-1 0 0 0 0.0 3

execute as @e[tag=teleporter,type=area_effect_cloud,scores={particle_pos=0}] at @s at @s[y=78.5,distance=..1] run scoreboard players set @s particle_pos 1
execute as @e[tag=teleporter,type=area_effect_cloud,scores={particle_pos=1}] at @s at @s[y=82.5,distance=..1] run scoreboard players set @s particle_pos 0
execute as @e[tag=teleporter,type=area_effect_cloud,scores={particle_pos=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=teleporter,type=area_effect_cloud,scores={particle_pos=1}] at @s run tp @s ~ ~0.025 ~
execute as @a[x=-932,y=79,z=-142,dx=0] at @s run function lobby:tp_to_tutorial
execute as @a[x=-938,y=79,z=-142,dx=0] at @s run function lobby:tp_to_scenario_options




##
execute if entity @a[tag=!playing,x=-928,y=62,z=-132,distance=..8] run function options:scenario/main


function credits:main

execute as @a[x=-1000,y=66,z=0,distance=..1000,scores={drop_ready_book=1..}] at @s run function lobby:drop_ready_book


# advancements
advancement grant @a[x=-1000,y=66,z=0,distance=..1000,nbt={Inventory:[{tag:{Gumball:1b}}]}] only advancements:lobby_gumball
advancement grant @a[x=-1000,y=66,z=0,distance=..1000,nbt={Inventory:[{tag:{Plushie:1b}}]}] only advancements:lobby_plushie
advancement grant @a[x=-941,y=74,z=-82,dx=11,dy=4,dz=11] only advancements:lobby_tutorial
advancement grant @a[x=-941,y=95,z=-152,dx=12,dy=5,dz=1.5] only advancements:lobby_cr


advancement grant @a[advancements={advancements:lobby_all=false,advancements:lobby_tutorial=true,advancements:lobby_gumball=true,advancements:lobby_plushie=true,advancements:lobby_cosmetic=true,advancements:lobby_socials=true,advancements:lobby_cr=true}] only advancements:lobby_all

advancement grant @a[advancements={advancements:lobby_all=true,advancements:game_all=true,advancements:wins_all=true,advancements:scenario_all=true,advancements:completionist/completionist=false}] only advancements:completionist/completionist

execute if entity @a[advancements={advancements:completionist/completionist=true},tag=!playing] run function completionist:completionist_helix