scoreboard objectives remove playing
scoreboard objectives add playing dummy {"text":" - P l a y i n g -","color":"aqua"}
scoreboard objectives setdisplay sidebar playing
scoreboard players set $20 alternate20 20
execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
scoreboard players set $time startup_timer 300