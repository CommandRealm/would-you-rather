scoreboard players remove $time rab_old_alarm 1


execute if score $time rab_old_alarm matches 100 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $time rab_old_alarm matches 80 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $time rab_old_alarm matches 60 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $time rab_old_alarm matches 40 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $time rab_old_alarm matches 20 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7

execute if score $time rab_old_alarm matches ..0 if score $number rab_old_alarm matches 3.. run scoreboard players set $time rab_old_alarm 400
execute if score $time rab_old_alarm matches ..0 if score $number rab_old_alarm matches ..2 run scoreboard players set $time rab_old_alarm 10
execute if score $number rab_old_alarm matches 4.. run scoreboard players set $number rab_old_alarm 0
execute if score $time rab_old_alarm matches 6 run scoreboard players add $number rab_old_alarm 1

execute if score $time rab_old_alarm matches 6 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.bell record @s ~ ~ ~ 0.5 0.7
execute if score $time rab_old_alarm matches 6 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.bell record @s ~ ~ ~ 0.5 0.5
execute if score $time rab_old_alarm matches 6 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 0.25 0.5
execute if score $time rab_old_alarm matches 6 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 0.15 0.5
execute if score $time rab_old_alarm matches 6 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 0.7
execute if score $time rab_old_alarm matches 1 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 1 0.7
execute if score $time rab_old_alarm matches 1 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.bell record @s ~ ~ ~ 0.5 0.75
execute if score $time rab_old_alarm matches 1 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.bell record @s ~ ~ ~ 0.5 0.55
execute if score $time rab_old_alarm matches 1 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 0.25 0.55
execute if score $time rab_old_alarm matches 1 as @a[tag=playing,team=rab_old,gamemode=adventure] at @s run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 0.15 0.55
