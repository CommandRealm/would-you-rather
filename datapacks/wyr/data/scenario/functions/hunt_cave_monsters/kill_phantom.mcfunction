scoreboard players add @s hcm_points 2
tellraw @s [{"text":"Phantom hunted! ","color":"yellow"},{"text":"| ","color":"gold","bold":true},{"text":"+2","color":"red","bold":false}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6
scoreboard players reset @s hcm_kill_phantom