##Summons
scoreboard players set $mod random 16
function random:random
execute if score $rand random matches 0 run summon minecraft:sheep 35986.0 71 0 {Age:-1357891,Rotation:[0.0f,0.0f],Motion:[2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 1 run summon minecraft:sheep 35986.0 71 0 {Age:-1357891,Rotation:[90.0f,0.0f],Motion:[2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 2 run summon minecraft:sheep 35986.0 71 0 {Age:-1357891,Rotation:[180.0f,0.0f],Motion:[2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 3 run summon minecraft:sheep 35986.0 71 0 {Age:-1357891,Rotation:[-90.0f,0.0f],Motion:[2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}

execute if score $rand random matches 4 run summon minecraft:sheep 36015.0 71 0 {Age:-1357891,Rotation:[0.0f,0.0f],Motion:[-2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 5 run summon minecraft:sheep 36015.0 71 0 {Age:-1357891,Rotation:[90.0f,0.0f],Motion:[-2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 6 run summon minecraft:sheep 36015.0 71 0 {Age:-1357891,Rotation:[180.0f,0.0f],Motion:[-2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 7 run summon minecraft:sheep 36015.0 71 0 {Age:-1357891,Rotation:[-90.0f,0.0f],Motion:[-2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}




execute if score $rand random matches 8 run summon minecraft:sheep 36000 71 15.0 {Age:-1357891,Rotation:[0.0f,0.0f],Motion:[0.0d,1.25d,-2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 9 run summon minecraft:sheep 36000 71 15.0 {Age:-1357891,Rotation:[90.0f,0.0f],Motion:[0.0d,1.25d,-2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 10 run summon minecraft:sheep 36000 71 15.0 {Age:-1357891,Rotation:[180.0f,0.0f],Motion:[0.0d,1.25d,-2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 11 run summon minecraft:sheep 36000 71 15.0 {Age:-1357891,Rotation:[-90.0f,0.0f],Motion:[0.0d,1.25d,-2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}



execute if score $rand random matches 12 run summon minecraft:sheep 36000 71 -14.0 {Age:-1357891,Rotation:[0.0f,0.0f],Motion:[0.0d,1.25d,2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 13 run summon minecraft:sheep 36000 71 -14.0 {Age:-1357891,Rotation:[90.0f,0.0f],Motion:[0.0d,1.25d,2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 14 run summon minecraft:sheep 36000 71 -14.0 {Age:-1357891,Rotation:[180.0f,0.0f],Motion:[0.0d,1.25d,2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}
execute if score $rand random matches 15 run summon minecraft:sheep 36000 71 -14.0 {Age:-1357891,Rotation:[-90.0f,0.0f],Motion:[0.0d,1.25d,2.25d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}



scoreboard players set $mod random 8
function random:random
execute if score $rand random matches 5..6 run data merge entity @e[type=sheep,tag=cs_color_change,limit=1] {Color:8}
execute if score $rand random matches 7 run data merge entity @e[type=sheep,tag=cs_color_change,limit=1] {Color:7}
tag @e[tag=cs_color_change,type=sheep] remove cs_color_change

##Scores
scoreboard players add $sheep_shown cs_sheep 1

scoreboard players remove $launch_left cs_sheep 1
