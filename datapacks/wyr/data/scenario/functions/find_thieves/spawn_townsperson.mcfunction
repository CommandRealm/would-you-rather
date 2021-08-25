scoreboard players add $number ft_alternate 1
execute if score $number ft_alternate matches 3.. run scoreboard players set $number ft_alternate 1

scoreboard players set $mod random 4
function random:random
execute if score $rand random matches 0 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Rotation:[0.0f,0.0f],Tags:["ft_die","ft_get_equipment"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
execute if score $rand random matches 1 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Rotation:[90.0f,0.0f],Tags:["ft_die","ft_get_equipment"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
execute if score $rand random matches 2 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Rotation:[180.0f,0.0f],Tags:["ft_die","ft_get_equipment"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
execute if score $rand random matches 3 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Rotation:[270.0f,0.0f],Tags:["ft_die","ft_get_equipment"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}

execute if score $number ft_alternate matches 1 run function scenario:find_thieves/generate_m_head
execute if score $number ft_alternate matches 2 run function scenario:find_thieves/generate_f_head

function scenario:find_thieves/generate_color
execute store result entity @e[type=skeleton,tag=ft_get_equipment,limit=1] ArmorItems[0].tag.display.color int 1 run scoreboard players get $color ft_alternate
function scenario:find_thieves/generate_color
execute store result entity @e[type=skeleton,tag=ft_get_equipment,limit=1] ArmorItems[1].tag.display.color int 1 run scoreboard players get $color ft_alternate
function scenario:find_thieves/generate_color
execute store result entity @e[type=skeleton,tag=ft_get_equipment,limit=1] ArmorItems[2].tag.display.color int 1 run scoreboard players get $color ft_alternate
tag @e[type=skeleton,tag=ft_get_equipment,limit=1] remove ft_get_equipment