clear @a[team=wiaaf]
gamemode adventure @a[team=wiaaf]
execute if entity @a[team=wiaaf,tag=tutorial] run schedule function scenario:work_in_an_anvil_factory/tutorial_setup 40t
execute unless entity @a[team=wiaaf,tag=tutorial] run schedule function scenario:check_countdown 40t
clone 17992 63 -8 18008 63 8 17992 64 -8
execute as @a[team=wiaaf,x=18000,y=66,z=0,distance=..100] at @s run kill @e[type=falling_block,distance=..200]
fill 18008 65 -8 17992 65 8 air
kill @e[tag=wiaaf_spawn]
summon minecraft:area_effect_cloud 17999 65 0 {Duration:1000000,Tags:["wiaaf_spawn1","wiaaf_spawn","infinite"]}
summon minecraft:area_effect_cloud 17999 65 0 {Duration:1000000,Tags:["wiaaf_spawn2","wiaaf_spawn","infinite"]}

execute as @a[team=wiaaf,x=18000,y=66,z=0,distance=..100] at @s run kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:anvil"}}]
execute as @a[team=wiaaf,x=18000,y=66,z=0,distance=..100] at @s run kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:chipped_anvil"}}]
execute as @a[team=wiaaf,x=18000,y=66,z=0,distance=..100] at @s run kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:damaged_anvil"}}]

scoreboard objectives add wiaaf_timer dummy
scoreboard objectives remove wiaaf_seconds
scoreboard objectives add wiaaf_seconds dummy {"text":"Time Remaining","color":"gray","bold":true}

scoreboard players set @a death 0


scoreboard objectives add wiaaf_anvil dummy
scoreboard players set @a[team=wiaaf] wiaaf_anvil 40



execute as @a[tag=playing,team=wiaaf,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=wiaaf,gamemode=adventure]
