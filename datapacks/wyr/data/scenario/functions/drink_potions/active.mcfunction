scoreboard players add $time ddp_timer 1
execute if score $ddp active_scenario matches 1 run schedule function scenario:drink_potions/active 1t
execute if score $ddp active_scenario matches 1 unless entity @a[team=ddp] run function scenario:drink_potions/end


#unless entity @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=30000,y=66,z=0,distance=..200] 

execute if score $time ddp_timer matches 720..1320 unless entity @a[tag=playing,team=ddp,scores={ddp_cool=1..}] if entity @a[tag=playing,team=ddp,nbt={Inventory:[{id:"minecraft:potion"}]}] as @e[type=armor_stand,tag=ddp_spawn,nbt={HandItems:[{id:"minecraft:potion"}]}] run data merge entity @s {Marker:1b}


tag @e[type=armor_stand,tag=ddp_spawn] remove ddp_has_potion

tag @e[type=armor_stand,tag=ddp_spawn,nbt={HandItems:[{id:"minecraft:potion"}]}] add ddp_has_potion

execute at @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=30000,y=66,z=0,distance=..200] as @e[type=armor_stand,tag=!ddp_has_potion,sort=nearest,limit=1,tag=!ddp_spectator,tag=ddp_spawn] at @s run data modify entity @s HandItems[0] set from entity @e[type=item,nbt={Item:{id:"minecraft:potion"}},limit=1,sort=nearest] Item
kill @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=30000,y=66,z=0,limit=1,distance=..200]
kill @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},x=30000,y=66,z=0,distance=..200]

execute if score $time ddp_timer matches 720..1320 unless entity @a[tag=playing,team=ddp,scores={ddp_cool=1..}] unless entity @a[tag=playing,team=ddp,nbt={Inventory:[{id:"minecraft:potion"}]}] unless entity @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=30000,y=66,z=0,distance=..200] as @e[type=armor_stand,tag=ddp_spawn,nbt={HandItems:[{id:"minecraft:potion"}]}] run data merge entity @s {Marker:0b}

clear @a[team=ddp,tag=playing] minecraft:potion{Potion:"minecraft:water"}


execute if score $time ddp_timer matches 180 positioned 30004 67 -1 run fill ~ ~ ~ ~ ~3 ~ chain[axis=z] replace air
execute if score $time ddp_timer matches 190 positioned 30004 67 0 run fill ~ ~ ~ ~ ~3 ~ chain[axis=z] replace air
execute if score $time ddp_timer matches 200 positioned 30004 67 1 run fill ~ ~ ~ ~ ~3 ~ chain[axis=z] replace air
execute if score $time ddp_timer matches 180 as @a[tag=playing,team=ddp] at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1000 1
execute if score $time ddp_timer matches 190 as @a[tag=playing,team=ddp] at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1000 0.75
execute if score $time ddp_timer matches 200 as @a[tag=playing,team=ddp] at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1000 0.5


execute if score $time ddp_timer matches ..600 as @a[tag=playing,team=ddp] at @s run spectate @e[type=armor_stand,tag=ddp_spectator,limit=1] @s
execute if score $time ddp_timer matches 100..200 as @e[type=armor_stand,tag=ddp_spectator,limit=1] at @s run tp @s ~-0.19 ~ ~
execute if score $time ddp_timer matches 200..350 as @e[type=armor_stand,tag=ddp_spectator,limit=1] at @s run tp @s ~-0.075 ~0.015 ~ facing entity @e[type=witch,distance=..25,sort=nearest,limit=1]

execute if score $time ddp_timer matches 270 run tellraw @a[tag=playing,team=ddp] [{"text":"<","color":"red","bold":true},{"text":"Witch","color":"dark_red","bold":false},{"text":">","color":"red","bold":true},{"text":" I want to play a game with you!","color":"gray","bold":false}]
execute if score $time ddp_timer matches 270 as @e[type=witch,tag=ddp_witch] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=ddp]
execute if score $time ddp_timer matches 270 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.witch.ambient master @s ~ ~ ~ 1 1


execute if score $time ddp_timer matches 330 run tellraw @a[tag=playing,team=ddp] [{"text":"<","color":"red","bold":true},{"text":"Witch","color":"dark_red","bold":false},{"text":">","color":"red","bold":true},{"text":" I have ","color":"gray","bold":false},{"score":{"objective":"ddp_bottles","name":"$d_number"},"color":"dark_red","bold":true},{"text":" potions on this table.","color":"gray","bold":false}]
execute if score $time ddp_timer matches 330 as @e[type=witch,tag=ddp_witch] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=ddp]
execute if score $time ddp_timer matches 330 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.witch.ambient master @s ~ ~ ~ 1 1

execute if score $time ddp_timer matches 370 run tellraw @a[tag=playing,team=ddp] [{"text":"<","color":"red","bold":true},{"text":"Witch","color":"dark_red","bold":false},{"text":"> ","color":"red","bold":true},{"score":{"objective":"ddp_bottles","name":"$d_poison"},"color":"dark_red","bold":true},{"text":" will kill you when drunk.","color":"gray","bold":false}]
execute if score $time ddp_timer matches 370 as @e[type=witch,tag=ddp_witch] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=ddp]
execute if score $time ddp_timer matches 370 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 1 1

execute if score $time ddp_timer matches 420 run tellraw @a[tag=playing,team=ddp] [{"text":"<","color":"red","bold":true},{"text":"Witch","color":"dark_red","bold":false},{"text":">","color":"red","bold":true},{"text":" You must drink a potion. Good luck! HEHEHEHE","color":"gray","bold":false}]
execute if score $time ddp_timer matches 420 as @e[type=witch,tag=ddp_witch] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=ddp]
execute if score $time ddp_timer matches 420 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 1 1
execute if score $time ddp_timer matches 420 run scoreboard players set $time ddp_timer 580


execute if score $time ddp_timer matches 600 as @a[tag=playing,team=ddp] at @s run particle minecraft:witch ~ ~1 ~ 0 0.5 0 0.5 100 force @s
execute if score $time ddp_timer matches 600 run gamemode adventure @a[tag=playing,team=ddp]
execute if score $time ddp_timer matches 600 run tp @a[tag=playing,team=ddp] 30002 67 0 90 0
execute if score $time ddp_timer matches 600 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 0
execute if score $time ddp_timer matches 600 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 0.75
execute if score $time ddp_timer matches 600 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 1.5
execute if score $time ddp_timer matches 600 as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 2
execute if score $time ddp_timer matches 600 as @a[tag=playing,team=ddp] at @s run particle minecraft:witch ~ ~1 ~ 0 0.5 0 0.5 100 force @s
execute if score $time ddp_timer matches 600 run kill @e[type=armor_stand,tag=ddp_spectator]
execute if score $time ddp_timer matches 600 run scoreboard players add $time ddp_timer 100
execute if score $time ddp_timer matches 600 as @e[type=armor_stand,tag=ddp_spawn] run data merge entity @s {Marker:0b}


execute if score $time ddp_timer matches 720 run function scenario:drink_potions/pick_player
execute if score $time ddp_timer matches 720 if entity @a[tag=playing,team=ddp,scores={check_players=1},gamemode=adventure] unless entity @a[tag=playing,team=ddp,scores={ddp_bottles=..0},gamemode=adventure] run function scenario:drink_potions/teleport_to_select
execute if score $time ddp_timer matches 720 unless entity @a[tag=playing,team=ddp,scores={check_players=1},gamemode=adventure] run function scenario:drink_potions/teleport_to_select

scoreboard players set @a[tag=playing,team=ddp,scores={ddp_cool=100}] ddp_drink 0
scoreboard players remove @a[tag=playing,team=ddp,scores={ddp_cool=1..}] ddp_cool 1

execute if score $time ddp_timer matches 720..1320 run scoreboard players set @a[tag=playing,tag=ddp_selecting,team=ddp,scores={ddp_drink=1..}] ddp_cool 100


execute as @a[tag=playing,tag=ddp_selecting,team=ddp] at @s if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{ddp_poison:1}}]}] run tag @s remove ddp_safe

execute as @a[tag=playing,team=ddp,tag=ddp_selecting,scores={ddp_cool=50}] at @s run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.9
execute as @a[tag=playing,team=ddp,tag=ddp_selecting,scores={ddp_cool=90..100}] at @s run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 0




execute as @a[tag=playing,team=ddp,tag=ddp_selecting,scores={ddp_cool=0},gamemode=adventure] at @s run function scenario:drink_potions/drank


execute if score $time ddp_timer matches 1120 unless entity @a[tag=playing,team=ddp,tag=ddp_selecting,scores={ddp_cool=1..},gamemode=adventure] run tellraw @a[tag=playing,team=ddp,gamemode=adventure,tag=ddp_selecting] [{"text":"Please drink a potion now!","color":"dark_red"}]
execute if score $time ddp_timer matches 1120 as @a[tag=playing,team=ddp,gamemode=adventure,tag=ddp_selecting] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.6
execute if score $time ddp_timer matches 1120 as @a[tag=playing,team=ddp,gamemode=adventure,tag=ddp_selecting] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.5

execute if score $time ddp_timer matches 1320 run scoreboard players set $time ddp_timer 1999

execute if score $time ddp_timer matches 2000 as @a[team=ddp,tag=playing,tag=ddp_selecting,gamemode=adventure] at @s run function scenario:drink_potions/start_death
execute as @a[team=ddp,tag=playing,tag=ddp_face_witch,gamemode=adventure] at @s run tp @s ~ ~ ~ facing entity @e[type=witch,sort=nearest,limit=1]
execute if entity @a[team=ddp,tag=playing,tag=ddp_face_witch,gamemode=adventure] as @e[type=witch,sort=nearest,limit=1,tag=ddp_witch] at @s run tp @s ~ ~ ~ facing entity @p[tag=ddp_selecting,gamemode=adventure]
execute if score $time ddp_timer matches 2030 as @a[tag=playing,tag=ddp_death,gamemode=adventure] at @s run function scenario:drink_potions/die

execute if entity @a[tag=playing,team=ddp,scores={ddp_cool=1..}] as @e[type=armor_stand,tag=ddp_spawn,nbt={HandItems:[{id:"minecraft:potion"}]}] run data merge entity @s {Marker:1b}

execute as @a[tag=playing,tag=ddp_selecting,team=ddp] at @s unless entity @s[scores={ddp_cool=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{ddp_poison:1}}]}] run tag @s add ddp_safe
clear @a[tag=playing,team=ddp] glass_bottle