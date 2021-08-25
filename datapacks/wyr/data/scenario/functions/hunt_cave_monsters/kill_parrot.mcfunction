scoreboard players add @s hcm_points 3
tellraw @s [{"text":"Parrot hunted! ","color":"yellow"},{"text":"| ","color":"gold","bold":true},{"text":"+3","color":"red","bold":false}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.8
scoreboard players reset @s hcm_kill_parrot