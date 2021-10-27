gamemode spectator @s
tag @s add spectating
team join spectator
effect clear @s
clear @s

scoreboard players reset @s scenario_sel

scoreboard players reset @s rc


tellraw @s [{"text":"You are now spectating! To return to the lobby, click ","color":"gray"},{"text":"[","color":"white","bold":true},{"text":"here","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/trigger stop_spectating add 1"}},{"text":"]","color":"white","bold":true}]
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 1.75

bossbar set lobby players @a[tag=!playing,tag=!playing_soon]