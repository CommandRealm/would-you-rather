scoreboard players remove $time choose_bar 1
execute store result bossbar minecraft:choosetime value run scoreboard players get $time choose_bar
execute if score $time showstart matches 1400..1603 run schedule function show:remove_choose_time 1t

scoreboard players remove $time beat 1
execute if score $time beat matches ..0 run scoreboard players set $time beat 40
execute if score $time beat matches 40 as @a[tag=playing] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1
execute if score $time beat matches 20 as @a[tag=playing] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 0.75