title @a[team=wiaaf] title {"text":" "}
execute if score $time wiaaf_timer matches 680.. run title @a[team=wiaaf] subtitle [{"text":"⚠ ","color":"gray"},{"text":"Look up!","color":"white"},{"text":" ⚠","color":"gray"}]
execute if score $time wiaaf_timer matches 679 run title @a[team=wiaaf] subtitle [{"text":" "}]
effect give @a[team=wiaaf] invisibility 10000 255 true
execute as @a[team=wiaaf] at @s unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run function scenario:work_in_an_anvil_factory/get_pants
scoreboard players remove $time wiaaf_timer 1
scoreboard players operation : wiaaf_timer = $time wiaaf_timer
scoreboard players operation : wiaaf_timer /= $20 number
scoreboard players add : wiaaf_timer 1
execute unless score : wiaaf_timer = : wiaaf_seconds run scoreboard players operation : wiaaf_seconds = : wiaaf_timer
execute if score $wiaaf active_scenario matches 1 if score $time wiaaf_timer matches 1.. run schedule function scenario:work_in_an_anvil_factory/active 1t
execute if score $wiaaf active_scenario matches 1 unless entity @a[team=wiaaf] run function scenario:work_in_an_anvil_factory/end


execute if score $time wiaaf_timer matches 1.. run spreadplayers 18000 0 0 8 false @e[tag=wiaaf_spawn,type=area_effect_cloud]
scoreboard players set $mod random 3
function random:random
execute if score $rand random matches 0 unless score $time wiaaf_timer matches 660.. as @e[tag=wiaaf_spawn,type=area_effect_cloud,limit=1,sort=random] at @s run summon falling_block ~ 81 ~ {BlockState:{Name:"minecraft:anvil"},Time:1,Tags:["die","wiaaf_anvil"]}
execute if score $rand random matches 1..2 unless score $time wiaaf_timer matches 660.. as @e[tag=wiaaf_spawn,type=area_effect_cloud] at @s run summon falling_block ~ 81 ~ {BlockState:{Name:"minecraft:anvil"},Time:1,Tags:["die","wiaaf_anvil"]}

fill 18008 65 -8 17992 65 8 air
execute as @e[type=falling_block] at @s if block ~ ~-0.5 ~ polished_andesite_slab run fill ~ ~-0.5 ~ ~ ~-0.5 ~ andesite_slab replace polished_andesite_slab
execute as @e[type=falling_block] at @s if block ~ ~-0.5 ~ stone_slab run fill ~ ~-0.5 ~ ~ ~-0.5 ~ cobblestone_slab replace stone_slab



execute as @e[type=falling_block,x=18000,y=66,z=0,distance=..100] at @s if block ~ ~0.0 ~ polished_andesite_slab run function scenario:work_in_an_anvil_factory/destroy_anvil
execute as @e[type=falling_block,x=18000,y=66,z=0,distance=..100] at @s if block ~ ~0.0 ~ andesite_slab run function scenario:work_in_an_anvil_factory/destroy_anvil
execute as @e[type=falling_block,x=18000,y=66,z=0,distance=..100] at @s if block ~ ~0.0 ~ stone_slab run function scenario:work_in_an_anvil_factory/destroy_anvil
execute as @e[type=falling_block,x=18000,y=66,z=0,distance=..100] at @s if block ~ ~0.0 ~ cobblestone_slab run function scenario:work_in_an_anvil_factory/destroy_anvil


execute as @e[type=falling_block,x=18000,y=66,z=0,distance=..100] at @s positioned ~ ~-0.75 ~ run kill @a[tag=playing,team=wiaaf,gamemode=adventure,distance=0..0.5]
clear @a[team=wiaaf] #minecraft:anvil
stopsound @a[team=wiaaf] * minecraft:block.anvil.land
stopsound @a[team=wiaaf] * minecraft:block.anvil.fall
stopsound @a[team=wiaaf] * minecraft:block.anvil.destroy




scoreboard players remove @a[team=wiaaf] wiaaf_anvil 1
execute if entity @a[team=wiaaf,scores={wiaaf_anvil=..0,check_players=..1}] run scoreboard players set @a[team=wiaaf] wiaaf_anvil 10
execute if entity @a[team=wiaaf,scores={wiaaf_anvil=..0,check_players=2..}] run scoreboard players set @a[team=wiaaf] wiaaf_anvil 15
execute if entity @a[team=wiaaf,scores={wiaaf_anvil=1},gamemode=adventure] as @a[team=wiaaf,gamemode=adventure] at @s run fill ~ 81 ~ ~ 81 ~ anvil replace air
execute as @a[team=wiaaf,gamemode=adventure] at @s run tag @e[type=falling_block,distance=..25,tag=!die] add die

execute if score $time wiaaf_timer matches 0 as @a[tag=playing,team=wiaaf,gamemode=adventure] at @s run function scenario:work_in_an_anvil_factory/success
execute as @a[team=wiaaf,scores={death=1..},gamemode=adventure] at @s run function scenario:work_in_an_anvil_factory/fail