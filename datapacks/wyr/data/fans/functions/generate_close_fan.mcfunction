scoreboard players set $mod random 5
function random:random
execute if score $rand random matches 0 run summon armor_stand ~ ~-1.15 ~.25 {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}],Tags:["die_at_end","close_fan"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,8f,0f],Head:[333f,15f,0f],LeftLeg:[284f,339f,0f],RightLeg:[287f,27f,0f],LeftArm:[201f,279f,0f],RightArm:[214f,69f,0f]}}

execute if score $rand random matches 1 run summon armor_stand ~ ~-1.15 ~.25 {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}],Tags:["die_at_end","close_fan"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,354f,0f],LeftLeg:[294f,7f,0f],RightLeg:[294f,8f,0f],LeftArm:[344f,340f,339f],RightArm:[347f,58f,7f]}}

execute if score $rand random matches 2 run summon armor_stand ~ ~-1.15 ~.25 {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}],Tags:["die_at_end","close_fan"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[360f,349f,0f],Head:[321f,332f,0f],LeftLeg:[310f,14f,0f],RightLeg:[305f,348f,0f],LeftArm:[336f,0f,343f],RightArm:[347f,306f,0f]}}

execute if score $rand random matches 3 run summon armor_stand ~ ~-1.15 ~.25 {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}],Tags:["die_at_end","close_fan"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,6f,2f],Head:[18f,360f,8f],LeftLeg:[291f,0f,329f],RightLeg:[291f,0f,38f],LeftArm:[0f,0f,343f],RightArm:[354f,0f,53f]}}

execute if score $rand random matches 4 run summon armor_stand ~ ~-1.15 ~.25 {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}],Tags:["die_at_end","close_fan"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,354f,0f],Head:[0f,332f,0f],LeftLeg:[290f,329f,352f],RightLeg:[299f,336f,3f],LeftArm:[316f,0f,345f],RightArm:[320f,0f,339f]}}




scoreboard players set $mod random 8
function random:random

execute if score $rand random matches 1 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~10 ~
execute if score $rand random matches 2 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~-10 ~
execute if score $rand random matches 3 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~20 ~
execute if score $rand random matches 4 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~-20 ~
execute if score $rand random matches 5 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~30 ~
execute if score $rand random matches 6 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~-30 ~
execute if score $rand random matches 7 as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] at @s run tp @s ~ ~ ~ ~40 ~



scoreboard players set $mod random 16777215
function random:random
scoreboard players operation $color fans = $rand random
scoreboard players set $mod random 8
function random:random
execute if score $mod random matches 0 run scoreboard players add $color fans 100000
execute if score $mod random matches 1 run scoreboard players remove $color fans 100000
execute if score $mod random matches 2 run scoreboard players add $color fans 1000000
execute if score $mod random matches 3 run scoreboard players remove $color fans 1000000
execute if score $mod random matches 4 run scoreboard players add $color fans 10000
execute if score $mod random matches 5 run scoreboard players remove $color fans 10000
execute as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan] at @s store result entity @s ArmorItems[0].tag.display.color int 1 run scoreboard players get $color fans

scoreboard players set $mod random 16777215
function random:random
scoreboard players operation $color fans = $rand random
scoreboard players set $mod random 8
function random:random
execute if score $mod random matches 0 run scoreboard players add $color fans 1000000
execute if score $mod random matches 1 run scoreboard players remove $color fans 1000000
execute if score $mod random matches 2 run scoreboard players add $color fans 10000000
execute if score $mod random matches 3 run scoreboard players remove $color fans 10000000
execute if score $mod random matches 4 run scoreboard players add $color fans 100000
execute if score $mod random matches 5 run scoreboard players remove $color fans 100000
execute as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan] at @s store result entity @s ArmorItems[1].tag.display.color int 1 run scoreboard players get $color fans

scoreboard players set $mod random 16777215
function random:random
scoreboard players operation $color fans = $rand random
scoreboard players set $mod random 6
function random:random
execute if score $mod random matches 0 run scoreboard players add $color fans 100000
execute if score $mod random matches 1 run scoreboard players remove $color fans 100000
execute if score $mod random matches 2 run scoreboard players add $color fans 1000000
execute if score $mod random matches 3 run scoreboard players remove $color fans 1000000
execute if score $mod random matches 4 run scoreboard players add $color fans 10000
execute if score $mod random matches 5 run scoreboard players remove $color fans 10000
execute as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan] at @s store result entity @s ArmorItems[2].tag.display.color int 1 run scoreboard players get $color fans



tag @e[type=item,tag=fan_head,sort=random,limit=1] add selected_fan_head
execute as @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan] at @s run data modify entity @s ArmorItems[3] set from entity @e[type=item,tag=selected_fan_head,limit=1] Item{}
kill @e[type=item,tag=selected_fan_head,limit=1]

tag @e[type=minecraft:armor_stand,tag=close_fan,tag=!generated_fan,distance=..2] add generated_fan
kill @s