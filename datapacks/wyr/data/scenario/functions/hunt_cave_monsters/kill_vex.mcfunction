scoreboard players add @s hcm_points 4
tellraw @s [{"text":"Vex hunted! ","color":"yellow"},{"text":"| ","color":"gold","bold":true},{"text":"+4","color":"red","bold":false}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.9
scoreboard players reset @s hcm_kill_vex