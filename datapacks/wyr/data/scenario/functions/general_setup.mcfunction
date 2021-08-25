execute as @e[type=slime,tag=!visible] at @s run effect clear @s invisibility
execute as @e[type=slime,tag=!visible] at @s run effect give @s invisibility 100000 255 true
team join collision @e[type=slime,tag=!visible]
execute as @a[tag=playing] run kill @e[type=armor_stand,tag=tutorial_marker,distance=..15]