#called from show:timer
#purpose is to clone podiums in and assign players their id

kill @e[tag=podium_clone]

scoreboard objectives remove id
scoreboard objectives add id dummy
execute as @a[tag=playing] at @s run function show:generate_id


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
execute as @a[scores={id=2}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=2},sort=random,limit=1] podium_clone = @s podium
execute as @a[scores={id=1}] at @s run scoreboard players operation @e[tag=podium_clone,scores={podium_id=1},sort=random,limit=1] podium_clone = @s podium

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

# new commons
execute as @e[tag=podium_clone,scores={podium_clone=15}] at @s run clone -53 21 2 -49 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=16}] at @s run clone -47 21 2 -43 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=17}] at @s run clone -41 21 2 -37 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=18}] at @s run clone -35 21 2 -31 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=19}] at @s run clone -29 21 2 -25 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=20}] at @s run clone -23 21 2 -19 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=21}] at @s run clone -17 21 2 -13 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=22}] at @s run clone -11 21 2 -7 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=23}] at @s run clone -5 21 2 -1 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=24}] at @s run clone 1 21 2 5 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=25}] at @s run clone 7 21 2 11 38 6 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=26}] at @s run clone 13 21 2 17 38 6 ~ ~ ~






#epic:
execute as @e[tag=podium_clone,scores={podium_clone=27}] at @s run clone -55 21 -5 -59 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=28}] at @s run clone -61 21 -5 -65 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=29}] at @s run clone -67 21 -5 -71 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=30}] at @s run clone -73 21 -5 -77 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=31}] at @s run clone -79 21 -5 -83 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=32}] at @s run clone -137 21 -5 -133 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=33}] at @s run clone -143 21 -5 -139 38 -1 ~ ~ ~

# new epics
execute as @e[tag=podium_clone,scores={podium_clone=34}] at @s run clone -53 21 8 -49 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=35}] at @s run clone -47 21 8 -43 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=36}] at @s run clone -41 21 8 -37 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=37}] at @s run clone -35 21 8 -31 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=38}] at @s run clone -29 21 8 -25 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=39}] at @s run clone -23 21 8 -19 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=40}] at @s run clone -17 21 8 -13 38 12 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=41}] at @s run clone -11 21 8 -7 38 12 ~ ~ ~



#legendary

execute as @e[tag=podium_clone,scores={podium_clone=42}] at @s run clone -85 21 -5 -89 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=43}] at @s run clone -91 21 -5 -95 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=44}] at @s run clone -149 21 -5 -145 38 -1 ~ ~ ~

execute as @e[tag=podium_clone,scores={podium_clone=45}] at @s run clone -96 21 -5 -101 38 -1 ~ ~ ~

# new legendaries
execute as @e[tag=podium_clone,scores={podium_clone=46}] at @s run clone -53 21 14 -49 38 18 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=47}] at @s run clone -47 21 14 -43 38 18 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=48}] at @s run clone -41 21 14 -37 38 18 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=49}] at @s run clone -35 21 14 -31 38 18 ~ ~ ~
execute as @e[tag=podium_clone,scores={podium_clone=50}] at @s run clone -29 21 14 -25 38 18 ~ ~ ~

# advancement unlock
execute as @e[tag=podium_clone,scores={podium_clone=51}] at @s run clone -23 21 14 -19 38 18 ~ ~ ~
