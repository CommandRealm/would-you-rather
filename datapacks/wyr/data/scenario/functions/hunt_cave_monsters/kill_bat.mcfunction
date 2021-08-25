scoreboard players add @s hcm_points 5
tellraw @s [{"text":"Bat hunted! ","color":"yellow"},{"text":"| ","color":"gold","bold":true},{"text":"+5","color":"red","bold":false}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
scoreboard players reset @s hcm_kill_bat