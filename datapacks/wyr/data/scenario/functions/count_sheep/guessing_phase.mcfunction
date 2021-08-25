scoreboard players remove $time cs_timer 1
scoreboard players operation : cs_timer = $time cs_timer
scoreboard players operation : cs_timer /= $20 number
scoreboard players remove : cs_timer 4
execute unless score : cs_timer = : cs_seconds run scoreboard players operation : cs_seconds = : cs_timer

execute if score : cs_timer matches 0 run function scenario:count_sheep/clear_sidebar


scoreboard players add @a[tag=cs_locked_in,tag=playing,team=cs] cs_delay 1
execute as @a[scores={cs_delay=40},tag=cs_locked_in,gamemode=adventure,team=cs] at @s run function scenario:count_sheep/compare_counts
execute as @a[scores={cs_delay=60},tag=cs_locked_in,team=cs] at @s run function scenario:count_sheep/individual_finish


execute if score $time cs_timer matches 100 run function scenario:count_sheep/auto_lock_in

execute as @a[tag=playing,gamemode=adventure,team=cs,scores={cs_drop_lock=1..},tag=!cs_locked_in] at @s run function scenario:count_sheep/lock_in_answer
execute as @a[tag=playing,gamemode=adventure,team=cs,tag=!cs_locked_in] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:iron_bars"}]}] run function scenario:count_sheep/get_lock_item