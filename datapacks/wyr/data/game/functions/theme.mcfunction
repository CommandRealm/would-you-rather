scoreboard players add $theme theme 1
execute if score $theme theme matches 5 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute if score $theme theme matches 5 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute if score $theme theme matches 5 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2
execute if score $theme theme matches 5 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

execute if score $theme theme matches 10 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute if score $theme theme matches 10 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute if score $theme theme matches 10 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 15 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1
execute if score $theme theme matches 15 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.175
execute if score $theme theme matches 15 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 20 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute if score $theme theme matches 20 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute if score $theme theme matches 20 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 25 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute if score $theme theme matches 25 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute if score $theme theme matches 25 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 30 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute if score $theme theme matches 30 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute if score $theme theme matches 30 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 35 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1
execute if score $theme theme matches 35 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.175
execute if score $theme theme matches 35 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 40 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute if score $theme theme matches 40 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute if score $theme theme matches 40 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 45 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute if score $theme theme matches 45 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute if score $theme theme matches 45 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute if score $theme theme matches 50 as @a[tag=playing] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute if score $theme theme matches 50 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute if score $theme theme matches 50 as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2
execute if score $theme theme matches 50 as @a[tag=playing] at @s run playsound minecraft:block.note_block.cow_guitar master @a ~ ~ ~ 1 2
execute if score $theme theme matches 50 run scoreboard players set $theme theme -100
execute if score $theme theme matches 0.. run schedule function game:theme 1t