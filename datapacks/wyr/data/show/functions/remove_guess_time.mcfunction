scoreboard players remove $time guess_bar 1
execute store result bossbar minecraft:guesstime value run scoreboard players get $time guess_bar
execute if score $time showstart matches 1000..1300 run schedule function show:remove_guess_time 1t

scoreboard players remove $time beat 1
execute if score $time beat matches ..0 run scoreboard players set $time beat 40
execute if score $time beat matches 40 as @a[tag=playing] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1
execute if score $time beat matches 20 as @a[tag=playing] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 0.75