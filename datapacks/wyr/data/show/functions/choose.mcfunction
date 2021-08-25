tp @s -935 70 7 180 5
gamemode adventure @s
tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"selector":"@a[team=select]"},{"text":", what is your selection? You have ","color":"aqua"},{"text":"10","color":"green","underlined":true},{"text":" seconds.","color":"aqua"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9