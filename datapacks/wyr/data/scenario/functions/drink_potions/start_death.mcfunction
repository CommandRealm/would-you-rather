execute as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.witch.celebrate master @s
scoreboard players set $mod random 8
tag @s add ddp_face_witch
function random:random
tag @s add ddp_death
scoreboard players operation $death ddp_bottles = $rand random
execute if score $rand random matches 0 run playsound minecraft:entity.tnt.primed master @a
execute if score $rand random matches 1 run effect give @s wither 10 10 true
execute if score $rand random matches 2 run tp @s 29992 83 0
execute if score $rand random matches 3 run tp @s 30000 1 0
execute if score $rand random matches 4 run tp @s 29992 67 0
execute if score $rand random matches 4 run fill 29993 67 -1 29991 69 1 sand

execute if score $rand random matches 5 run summon minecraft:vindicator 29990 67 -3 {IsJohnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1b}],Tags:["ddp_die"]}
execute if score $rand random matches 5 run summon minecraft:vindicator 29990 67 3 {IsJohnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1b}],Tags:["ddp_die"]}
execute if score $rand random matches 5 run summon minecraft:vindicator 29987 67 -3 {IsJohnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1b}],Tags:["ddp_die"]}
execute if score $rand random matches 5 run summon minecraft:vindicator 29987 67 3 {IsJohnny:1b,HandItems:[{id:"minecraft:netherite_axe",Count:1b}],Tags:["ddp_die"]}
execute if score $rand random matches 6 run particle minecraft:falling_dust black_concrete ~ ~1 ~ 1 1 1 0.25 1000
execute if score $rand random matches 7 run replaceitem entity @s armor.head skeleton_skull{display:{Name:'[{"text":"Skull","color":"gray"}]'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}





execute if entity @a[tag=playing,team=ddp] run scoreboard players set $time ddp_timer 2000