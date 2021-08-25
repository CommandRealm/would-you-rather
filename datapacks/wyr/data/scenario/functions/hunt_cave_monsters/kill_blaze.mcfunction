scoreboard players add @s hcm_points 1
tellraw @s [{"text":"Blaze hunted! ","color":"yellow"},{"text":"| ","color":"gold","bold":true},{"text":"+1","color":"red","bold":false}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
scoreboard players reset @s hcm_kill_blaze