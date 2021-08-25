scoreboard players set $mod random 4
function random:random


execute if score $rand random matches 0 run summon minecraft:falling_block 35986.0 71 0 {BlockState:{Name:"minecraft:white_wool"},Motion:[1d,1d,0.0d],Health:1,Tags:["cs_fake","cs_die"],Time:550,DropItem:0}
execute if score $rand random matches 1 run summon minecraft:falling_block 36015.0 71 0 {BlockState:{Name:"minecraft:white_wool"},Motion:[-1d,1d,0.0d],Health:1,Tags:["cs_fake","cs_die"],Time:550,DropItem:0}
execute if score $rand random matches 2 run summon minecraft:falling_block 36000 71 15.0 {BlockState:{Name:"minecraft:white_wool"},Motion:[0.0d,1d,-1d],Health:1,Tags:["cs_fake","cs_die"],Time:550,DropItem:0}
execute if score $rand random matches 3 run summon minecraft:falling_block 36000 71 -14.0 {BlockState:{Name:"minecraft:white_wool"},Motion:[0.0d,1d,1d],Health:1,Tags:["cs_fake","cs_die"],Time:550,DropItem:0}


scoreboard players remove $launch_left cs_sheep 1
scoreboard players add $fake cs_sheep 1