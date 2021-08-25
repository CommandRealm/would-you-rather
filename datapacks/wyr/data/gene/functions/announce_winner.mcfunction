scoreboard players set $tie number 0

scoreboard objectives remove fake_points
scoreboard objectives add fake_points dummy
scoreboard players set $check_place fake_points 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points -= $check_place fake_points



execute as @a[scores={fake_points=0},tag=playing] at @s run scoreboard players add $tie number 1
execute if score $tie number matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"selector":"@a[scores={fake_points=0},tag=playing]"}]
execute if score $tie number matches 2.. run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Excuse me, we have multiple winners. The winners are: ","color":"aqua"},{"selector":"@a[scores={fake_points=0},tag=playing]"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.9
execute as @r[scores={fake_points=0},tag=playing] at @s run function banners:set_banner
tp @a[tag=playing,scores={fake_points=0}] -935 68 1 180 -5
execute as @a[tag=playing,scores={fake_points=0}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 10000 0.75
execute as @a[tag=playing,scores={fake_points=0}] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 100
clone -949 55 6 -921 65 7 -949 86 12