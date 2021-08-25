#called from show:timer
# purpose is to put players on their proper podiums

execute as @a[scores={id=11},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=11},limit=1]
execute as @a[scores={id=10},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=10},limit=1]
execute as @a[scores={id=9},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=9},limit=1]
execute as @a[scores={id=8},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=8},limit=1]
execute as @a[scores={id=7},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=7},limit=1]
execute as @a[scores={id=6},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=6},limit=1]
execute as @a[scores={id=5},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=5},limit=1]
execute as @a[scores={id=4},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=4},limit=1]
execute as @a[scores={id=3},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=3},limit=1]
execute as @a[scores={id=2},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=2},limit=1]
execute as @a[scores={id=1},tag=playing,tag=!selecting] at @s run tp @s @e[tag=podium_clone,scores={podium_id=1},limit=1]

execute as @a[tag=playing,tag=!selecting] at @s run tp @s ~2 ~ ~2 ~ ~5
execute as @a[tag=playing,scores={podium=..14},tag=!selecting] at @s run tp @s ~ 72 ~
execute as @a[tag=playing,scores={podium=15..21},tag=!selecting] at @s run tp @s ~ 75 ~
execute as @a[tag=playing,scores={podium=22..25},tag=!selecting] at @s run tp @s ~ 78 ~
execute as @a[tag=playing,tag=!selecting] at @s run tp @s ~ ~ ~ facing entity @e[tag=infinite,sort=nearest,limit=1,tag=look_on_stage]