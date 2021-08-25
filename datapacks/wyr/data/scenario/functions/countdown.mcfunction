scoreboard players remove @a[tag=playing,scores={game_countdown=1..},tag=!in_tutorial] game_countdown 1
execute as @a[tag=playing,scores={game_countdown=60}] run title @s title {"text":"3 . . .","color":"dark_blue"}
execute as @a[tag=playing,scores={game_countdown=60}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.498307
execute as @a[tag=playing,scores={game_countdown=55}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.498307
execute as @a[tag=playing,scores={game_countdown=50}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.498307
execute as @a[tag=playing,scores={game_countdown=45}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.498307


execute as @a[tag=playing,scores={game_countdown=40}] run title @s title {"text":"2...","color":"blue"}
execute as @a[tag=playing,scores={game_countdown=40}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.681793
execute as @a[tag=playing,scores={game_countdown=35}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.681793
execute as @a[tag=playing,scores={game_countdown=30}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.681793
execute as @a[tag=playing,scores={game_countdown=25}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.681793


execute as @a[tag=playing,scores={game_countdown=20}] run title @s title {"text":"1","color":"dark_aqua"}
execute as @a[tag=playing,scores={game_countdown=20}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.887749
execute as @a[tag=playing,scores={game_countdown=15}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.887749
execute as @a[tag=playing,scores={game_countdown=10}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.887749
execute as @a[tag=playing,scores={game_countdown=5}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.887749


execute as @a[tag=playing,scores={game_countdown=0}] run title @s title {"text":"Go!","color":"aqua"}
execute as @a[tag=playing,scores={game_countdown=0}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute as @a[tag=playing,scores={game_countdown=0}] run scoreboard players set $scenario active 1
execute as @a[tag=playing,scores={game_countdown=0}] run effect clear @s
execute if entity @a[tag=playing,scores={game_countdown=0}] run function scenario:check_start
execute as @a[tag=playing,scores={game_countdown=0}] at @s run function awards:reset_non_dummy
execute as @a[tag=playing,scores={game_countdown=0}] at @s run scoreboard players add @s stats_scenarios 1
execute as @a[tag=playing,scores={game_countdown=0}] at @s run scoreboard players reset @a[scores={game_countdown=0}] game_countdown

scoreboard players set $countdown active_scenario 0
execute as @a[tag=playing,scores={game_countdown=1..}] run schedule function scenario:countdown 1t
execute as @a[tag=playing,scores={game_countdown=1..}] run scoreboard players add $countdown active_scenario 1
