#called from show:timer
#purpose is to clone podiums in and assign players their id

kill @e[tag=podium_clone]

scoreboard players reset @a id
tag @a remove generateid
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @r[tag=playing,tag=!generateid] add generateid
scoreboard players add @a[tag=generateid] id 1
tag @a remove generateid

summon area_effect_cloud -963 65 -5 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -961 65 -11 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -955 65 -14 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -949 65 -16 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -943 65 -16 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -937 65 -16 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -931 65 -16 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -925 65 -16 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -919 65 -14 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -913 65 -11 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

summon area_effect_cloud -911 65 -5 {Duration:10000000,Invulnerable:1,Tags:["podium_clone"]}

scoreboard players set @e[tag=podium_clone] podium_id -1

execute as @a[scores={id=11},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=10},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=9},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=8},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=7},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=6},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=5},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=4},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=3},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=2},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id
execute as @a[scores={id=1},tag=!selecting] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_id = @s id

execute as @a[scores={id=11}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=11},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=10}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=10},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=9}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=9},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=8}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=8},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=7}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=7},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=6}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=6},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=5}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=5},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=4}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=4},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=3}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=3},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=2}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-2},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=1}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=-1},sort=random,limit=1] podium_clone = @s podium

scoreboard players set @e[tag=podium_clone,scores={podium_id=-1}] podium_clone -1

scoreboard players set @e[tag=podium_clone,scores={podium_clone=-1}] podium_clone -10

#common

execute as @e[tag=podium_clone,scores={podium_clone=-10}] at @s run clone 1 21 -5 5 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=0}] at @s run clone 1 21 -5 5 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=1}] at @s run clone -1 21 -5 -5 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=2}] at @s run clone -7 21 -5 -11 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=3}] at @s run clone -13 21 -5 -17 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=4}] at @s run clone -19 21 -5 -23 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=5}] at @s run clone -25 21 -5 -29 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=6}] at @s run clone -31 21 -5 -35 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=7}] at @s run clone -37 21 -5 -41 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=8}] at @s run clone -43 21 -5 -47 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=9}] at @s run clone -49 21 -5 -53 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=10}] at @s run clone -107 21 -5 -103 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=11}] at @s run clone -113 21 -5 -109 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=12}] at @s run clone -119 21 -5 -115 38 -1 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=13}] at @s run clone -125 21 -5 -121 38 -1 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=14}] at @s run clone -131 21 -5 -127 38 -1 ~ ~ ~



#epic:
execute as @e[tag=podium_clone,scores={podium_clone=15}] at @s run clone -55 21 -5 -59 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=16}] at @s run clone -61 21 -5 -65 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=17}] at @s run clone -67 21 -5 -71 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=18}] at @s run clone -73 21 -5 -77 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=19}] at @s run clone -79 21 -5 -83 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=20}] at @s run clone -137 21 -5 -133 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=21}] at @s run clone -143 21 -5 -139 38 -1 ~ ~ ~

#legendary

execute as @e[tag=podium_clone,scores={podium_clone=22}] at @s run clone -85 21 -5 -89 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=23}] at @s run clone -91 21 -5 -95 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=24}] at @s run clone -149 21 -5 -145 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=25}] at @s run clone -96 21 -5 -101 38 -1 ~ ~ ~
