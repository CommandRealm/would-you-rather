# called to make us respawn

# making sure we dont't
tag @e[type=marker,tag=rani_spawn] add possible_spawn
execute as @a[tag=playing,gamemode=adventure,team=rani] at @s run tag @e[type=marker,tag=rani_spawn,distance=..15] remove possible_spawn
execute unless entity @e[type=marker,tag=rani_spawn,tag=possible_spawn] run tag @e[type=marker,tag=rani_spawn] add possible_spawn

tp @s @e[type=marker,tag=possible_spawn,sort=random,limit=1]
execute at @s run particle minecraft:ash ~ ~1 ~ 0.5 1 0.5 0.5 100
execute at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0
execute at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0.67
execute at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0.75

effect give @s fire_resistance 100000 255 true
effect give @s instant_health 1 9 true

# updating items
give @s stone_sword{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:1024,UUID:[I; 1, 1, 1, 1]},{AttributeName:"generic.attack_damage",Amount:2,UUID:[I; 2, 2, 2, 2]}],Unbreakable:1b,display:{Name:'[{"text":"Sword","color":"gray","italic":false}]'}}

scoreboard players reset @s rani_d_cool