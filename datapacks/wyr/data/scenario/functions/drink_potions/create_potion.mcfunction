tag @e[type=armor_stand,tag=ddp_spawn,tag=!ddp_spawned,sort=random,limit=1] add ddp_spawning
replaceitem entity @e[type=armor_stand,tag=ddp_spawning] weapon.mainhand potion{HideFlags:63,ddp_poison:0}
scoreboard players set $mod random 16777215
function random:random
scoreboard players operation $color ddp_bottles = $rand random
scoreboard players set $mod random 8
function random:random
execute if score $mod random matches 0 run scoreboard players add $color ddp_bottles 10000
execute if score $mod random matches 1 run scoreboard players remove $color ddp_bottles 10000
execute if score $mod random matches 2 run scoreboard players add $color ddp_bottles 100000
execute if score $mod random matches 3 run scoreboard players remove $color ddp_bottles 100000
execute if score $mod random matches 4 run scoreboard players add $color ddp_bottles 1000
execute if score $mod random matches 5 run scoreboard players remove $color ddp_bottles 1000
execute as @e[type=minecraft:armor_stand,tag=ddp_spawning] at @s store result entity @s HandItems[0].tag.CustomPotionColor int 1 run scoreboard players get $color ddp_bottles

kill @e[type=area_effect_cloud,tag=ddp_name]
scoreboard players set $mod random 81
function random:random
execute if score $rand random matches 0 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Logic"}]'}
execute if score $rand random matches 1 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Dialect"}]'}
execute if score $rand random matches 2 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Reason"}]'}
execute if score $rand random matches 3 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Cognition"}]'}
execute if score $rand random matches 4 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Wisdom"}]'}
execute if score $rand random matches 5 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Relevant"}]'}
execute if score $rand random matches 6 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Mystify"}]'}
execute if score $rand random matches 7 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Eldritch"}]'}
execute if score $rand random matches 8 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Stupefying"}]'}
execute if score $rand random matches 9 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Befuddle"}]'}
execute if score $rand random matches 10 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Bewilderment"}]'}
execute if score $rand random matches 11 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Early"}]'}
execute if score $rand random matches 12 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Eerie"}]'}
execute if score $rand random matches 13 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Lament"}]'}
execute if score $rand random matches 14 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Expired"}]'}
execute if score $rand random matches 15 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Belated"}]'}
execute if score $rand random matches 16 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Birthday"}]'}
execute if score $rand random matches 17 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Sophistication"}]'}
execute if score $rand random matches 18 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Ordeal"}]'}
execute if score $rand random matches 19 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Sporty"}]'}
execute if score $rand random matches 20 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Advantage"}]'}
execute if score $rand random matches 21 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Serendipity"}]'}
execute if score $rand random matches 22 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Lull"}]'}
execute if score $rand random matches 23 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Gentle"}]'}
execute if score $rand random matches 24 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Pleasant"}]'}
execute if score $rand random matches 25 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Charming"}]'}
execute if score $rand random matches 26 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Oblige"}]'}
execute if score $rand random matches 27 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Bluff"}]'}
execute if score $rand random matches 28 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Feign"}]'}
execute if score $rand random matches 29 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Wizard"}]'}
execute if score $rand random matches 30 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Small"}]'}
execute if score $rand random matches 31 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Ranger"}]'}
execute if score $rand random matches 32 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Captain"}]'}
execute if score $rand random matches 33 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Regular"}]'}
execute if score $rand random matches 34 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Typical"}]'}
execute if score $rand random matches 35 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Broken"}]'}
execute if score $rand random matches 36 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Jupiter"}]'}
execute if score $rand random matches 37 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Questionable"}]'}
execute if score $rand random matches 38 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Nasty"}]'}
execute if score $rand random matches 39 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Pesky"}]'}

execute if score $rand random matches 40 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Movie"}]'}
execute if score $rand random matches 41 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Boring"}]'}
execute if score $rand random matches 42 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Purple"}]'}
execute if score $rand random matches 43 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"House"}]'}
execute if score $rand random matches 44 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Irratating"}]'}
execute if score $rand random matches 45 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Enraging"}]'}
execute if score $rand random matches 46 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Rattling"}]'}
execute if score $rand random matches 47 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Discipline"}]'}
execute if score $rand random matches 48 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Teaching"}]'}
execute if score $rand random matches 49 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Fiery"}]'}
execute if score $rand random matches 50 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Fury"}]'}
execute if score $rand random matches 51 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Bad"}]'}
execute if score $rand random matches 52 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Synonym"}]'}
execute if score $rand random matches 53 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Direct"}]'}
execute if score $rand random matches 54 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Edict"}]'}
execute if score $rand random matches 55 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Management"}]'}
execute if score $rand random matches 56 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Secure"}]'}
execute if score $rand random matches 57 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Promising"}]'}
execute if score $rand random matches 58 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Important"}]'}
execute if score $rand random matches 59 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Phony"}]'}
execute if score $rand random matches 60 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Bogus"}]'}
execute if score $rand random matches 61 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Sham"}]'}
execute if score $rand random matches 62 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Replica"}]'}
execute if score $rand random matches 63 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Dummy"}]'}
execute if score $rand random matches 64 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Lonely"}]'}
execute if score $rand random matches 65 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Rather"}]'}
execute if score $rand random matches 66 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Wooden"}]'}
execute if score $rand random matches 67 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Strong"}]'}
execute if score $rand random matches 68 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Willing"}]'}
execute if score $rand random matches 69 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Check"}]'}
execute if score $rand random matches 70 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Chip"}]'}
execute if score $rand random matches 71 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Gold"}]'}
execute if score $rand random matches 72 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Project"}]'}
execute if score $rand random matches 73 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Lovely"}]'}
execute if score $rand random matches 74 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Wonderful"}]'}
execute if score $rand random matches 75 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Superb"}]'}
execute if score $rand random matches 76 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Ghostly"}]'}
execute if score $rand random matches 77 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Sickly"}]'}
execute if score $rand random matches 78 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Meme"}]'}
execute if score $rand random matches 79 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Musical"}]'}
execute if score $rand random matches 80 run summon area_effect_cloud 30000 0 0 {Tags:["ddp_name"],CustomName:'[{"text":"Ender"}]'}


team join ddp_color @e[tag=ddp_name,type=area_effect_cloud]
scoreboard players set $mod random 16
function random:random
execute if score $rand random matches 0 run team modify ddp_color color aqua
execute if score $rand random matches 1 run team modify ddp_color color black
execute if score $rand random matches 2 run team modify ddp_color color blue
execute if score $rand random matches 3 run team modify ddp_color color dark_aqua
execute if score $rand random matches 4 run team modify ddp_color color dark_blue
execute if score $rand random matches 5 run team modify ddp_color color dark_gray
execute if score $rand random matches 6 run team modify ddp_color color dark_green
execute if score $rand random matches 7 run team modify ddp_color color dark_purple
execute if score $rand random matches 8 run team modify ddp_color color dark_red
execute if score $rand random matches 9 run team modify ddp_color color gold
execute if score $rand random matches 10 run team modify ddp_color color gray
execute if score $rand random matches 11 run team modify ddp_color color green
execute if score $rand random matches 12 run team modify ddp_color color light_purple
execute if score $rand random matches 13 run team modify ddp_color color red
execute if score $rand random matches 14 run team modify ddp_color color white
execute if score $rand random matches 15 run team modify ddp_color color yellow

execute if score $rand random matches 0 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"aqua"}]'} destroy
execute if score $rand random matches 1 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"black"}]'} destroy
execute if score $rand random matches 2 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"blue"}]'} destroy
execute if score $rand random matches 3 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"dark_aqua"}]'} destroy
execute if score $rand random matches 4 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"dark_blue"}]'} destroy
execute if score $rand random matches 5 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"dark_gray"}]'} destroy
execute if score $rand random matches 6 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"dark_green"}]'} destroy
execute if score $rand random matches 7 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"dark_purple"}]'} destroy
execute if score $rand random matches 8 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"dark_red"}]'} destroy
execute if score $rand random matches 9 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"gold"}]'} destroy
execute if score $rand random matches 10 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"gray"}]'} destroy
execute if score $rand random matches 11 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"green"}]'} destroy
execute if score $rand random matches 12 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"light_purple"}]'} destroy
execute if score $rand random matches 13 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"red"}]'} destroy
execute if score $rand random matches 14 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"white"}]'} destroy
execute if score $rand random matches 15 run setblock 30000 5 0 oak_sign{Text1:'[{"selector":"@e[tag=ddp_name,sort=random,limit=1]","italic":false},{"text":" Potion","color":"yellow"}]'} destroy

execute as @e[type=minecraft:armor_stand,tag=ddp_spawning,tag=!ddp_spawned] at @s run data modify entity @s HandItems[0].tag.display.Name set from block 30000 5 0 Text1



tag @e[type=armor_stand,tag=ddp_spawning] add ddp_spawned
tag @e[type=armor_stand,tag=ddp_spawning] remove ddp_spawning
scoreboard players remove $number ddp_bottles 1
execute if score $number ddp_bottles matches 1.. run function scenario:drink_potions/create_potion