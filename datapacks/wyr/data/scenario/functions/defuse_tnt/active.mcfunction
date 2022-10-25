scoreboard players remove $time dab_timer 1
scoreboard players operation : dab_timer = $time dab_timer
scoreboard players operation : dab_timer /= $20 number
scoreboard players add : dab_timer 1
execute unless score : dab_timer = : dab_seconds run scoreboard players operation : dab_seconds = : dab_timer

effect give @a[gamemode=adventure,team=dab] resistance 5 255 true

execute if score $dab active_scenario matches 1 if score $time dab_timer matches 1.. run schedule function scenario:defuse_tnt/active 1t
execute if score $dab active_scenario matches 1 unless entity @a[team=dab] run function scenario:defuse_tnt/end

execute if score $time dab_timer matches 0 as @a[team=dab,tag=playing,gamemode=adventure] at @s run function scenario:defuse_tnt/fail

scoreboard players remove $time dab_second 1
execute if score $time dab_second matches ..0 run scoreboard players set $time dab_second 20
execute if score $time dab_second matches 20 as @a[tag=playing,team=dab] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.25 0.75
execute if score $time dab_second matches 20 as @a[tag=playing,team=dab] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.5 1

execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:red_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:orange_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:yellow_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:lime_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:light_blue_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:blue_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:pink_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:purple_concrete"}]}] run function scenario:defuse_tnt/get_concrete
execute if score $time dab_animation matches 0 as @a[team=dab,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:brown_concrete"}]}] run function scenario:defuse_tnt/get_concrete
kill @e[type=item,nbt={Item:{tag:{Die:1}}},x=26000,y=66,z=0,distance=..500]
execute unless score $time dab_animation matches 0 run clear @a[team=dab]

execute unless block 25990 77 6 air unless block 25990 77 5 air unless block 25990 77 4 air unless entity @e[type=falling_block,tag=dab_code] run function scenario:defuse_tnt/guess

execute if score $time dab_animation matches 1.. run function scenario:defuse_tnt/animation

execute if entity @e[type=falling_block,distance=..1,x=25981,y=73,z=1] run schedule function scenario:defuse_tnt/conveyor 20t

tp @e[type=falling_block,distance=..1,x=25981,y=73,z=1] 25981 72 1
tp @e[type=falling_block,distance=..1,x=25981,y=73,z=5] 25981 72 5
tp @e[type=falling_block,distance=..1,x=25981,y=73,z=9] 25981 72 9


execute if score $1 dab_state matches 0 at @e[type=area_effect_cloud,tag=dab_particle_1] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $2 dab_state matches 0 at @e[type=area_effect_cloud,tag=dab_particle_2] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $3 dab_state matches 0 at @e[type=area_effect_cloud,tag=dab_particle_3] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a

execute if score $1 dab_state matches 1 at @e[type=area_effect_cloud,tag=dab_particle_1] run particle dust 0.25 0.25 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $2 dab_state matches 1 at @e[type=area_effect_cloud,tag=dab_particle_2] run particle dust 0.25 0.25 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $3 dab_state matches 1 at @e[type=area_effect_cloud,tag=dab_particle_3] run particle dust 0.25 0.25 1 1 ~ ~ ~ 0 0 0 0 1 force @a

execute if score $1 dab_state matches 2 at @e[type=area_effect_cloud,tag=dab_particle_1] run particle dust 0 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $2 dab_state matches 2 at @e[type=area_effect_cloud,tag=dab_particle_2] run particle dust 0 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $3 dab_state matches 2 at @e[type=area_effect_cloud,tag=dab_particle_3] run particle dust 0 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a

execute if score $1 dab_state matches 3 at @e[type=area_effect_cloud,tag=dab_particle_1] run particle dust 0 1 0.75 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $2 dab_state matches 3 at @e[type=area_effect_cloud,tag=dab_particle_2] run particle dust 0 1 0.75 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $3 dab_state matches 3 at @e[type=area_effect_cloud,tag=dab_particle_3] run particle dust 0 1 0.75 1 ~ ~ ~ 0 0 0 0 1 force @a


execute as @e[tag=dab_particle,scores={dab_particle=0}] at @s run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 1 force @a
execute as @e[tag=dab_particle,scores={dab_particle=1}] at @s run particle dust 0.25 0.25 1 1 ~ ~1.5 ~ 0 0 0 0 1 force @a
execute as @e[tag=dab_particle,scores={dab_particle=2}] at @s run particle dust 0 1 0 1 ~ ~1.5 ~ 0 0 0 0 1 force @a
execute as @e[tag=dab_particle,scores={dab_particle=3}] at @s run particle dust 0 1 0.75 1 ~ ~1.5 ~ 0 0 0 0 1 force @a

fill 25992 77 9 25991 80 1 air replace #minecraft:dab_concrete


fill 25991 77 8 25989 79 7 air replace #minecraft:dab_concrete


fill 25991 77 3 25989 79 2 air replace #minecraft:dab_concrete


fill 25989 77 6 25989 80 4 air replace #minecraft:dab_concrete

fill 25990 78 6 25990 80 4 air replace #minecraft:dab_concrete