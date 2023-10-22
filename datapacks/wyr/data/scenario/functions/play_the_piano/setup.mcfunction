clear @a[team=ptp]
gamemode adventure @a[team=ptp,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=ptp_die] 0 0 0
kill @e[tag=ptp_die]


##if scenario needs timer:
scoreboard objectives add ptp_timer dummy
scoreboard objectives add ptp_code dummy
scoreboard objectives add ptp_shown dummy
scoreboard objectives add ptp_played dummy

scoreboard players set $mod random 8
function random:random
scoreboard players operation $1 ptp_code = $rand random
function random:random
scoreboard players operation $2 ptp_code = $rand random
function random:random
scoreboard players operation $3 ptp_code = $rand random
function random:random
scoreboard players operation $4 ptp_code = $rand random
function random:random
scoreboard players operation $5 ptp_code = $rand random
function random:random
scoreboard players operation $6 ptp_code = $rand random

##function random:random
##scoreboard players operation $7 ptp_code = $rand random
##function random:random
##scoreboard players operation $8 ptp_code = $rand random

execute if entity @a[team=ptp,tag=tutorial] run schedule function scenario:play_the_piano/tutorial_setup 40t
execute unless entity @a[team=ptp,tag=tutorial] run schedule function scenario:check_countdown 40t


summon minecraft:armor_stand 33014.555 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33015.0 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33016.335 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33017.65 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33018.095 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33019.43 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33020.745 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

summon minecraft:armor_stand 33021.19 66.0 2.2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

execute as @e[type=armor_stand,tag=ptp_sharp_key] at @s run tp @s ~0.1 ~ ~
execute as @e[type=armor_stand,tag=ptp_sharp_key] at @s run summon minecraft:armor_stand ~ 66.0 2.534 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}],Tags:["ptp_die","ptp_sharp_key"],NoGravity:1b,Rotation:[180f,0f]}

scoreboard objectives remove ptp_drop
scoreboard objectives add ptp_drop minecraft.custom:minecraft.drop

##summon minecraft:villager 33014 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_c"]}
##summon minecraft:villager 33015 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_d"]}
##summon minecraft:villager 33016 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_e"]}
##summon minecraft:villager 33017 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_f"]}
##summon minecraft:villager 33018 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_g"]}
##summon minecraft:villager 33019 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_a"]}
##summon minecraft:villager 33020 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_b"]}
##summon minecraft:villager 33021 67.0 2.75 {NoGravity:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:1,show_particles:false}],Rotation:[180f,0f],Silent:1b,Tags:["ptp_die","ptp_high_c"]}



execute as @e[type=painting,x=33000,y=66,z=0,distance=..400] at @s run data merge entity @s {Invulnerable:1b}


fill 33014 67 3 33021 67 3 minecraft:oak_trapdoor[facing=south,half=top,open=true]