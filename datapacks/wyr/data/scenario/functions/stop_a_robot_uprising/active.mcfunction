#timer:
scoreboard players remove $time saru_timer 1
scoreboard players operation : saru_timer = $time saru_timer
scoreboard players operation : saru_timer /= $20 number
scoreboard players add : saru_timer 1
execute unless score : saru_timer = : saru_seconds run scoreboard players operation : saru_seconds = : saru_timer





execute as @e[tag=saru_die,type=!area_effect_cloud] at @s run kill @e[type=area_effect_cloud,tag=saru_death_noise,sort=nearest,limit=1,distance=..1.5]
execute as @e[type=area_effect_cloud,tag=saru_death_noise] at @s run function scenario:stop_a_robot_uprising/death_noise_tree
kill @e[type=area_effect_cloud,tag=saru_death_noise]
execute as @e[type=!area_effect_cloud,tag=saru_die,tag=!saru_commander] at @s if entity @a[tag=playing,distance=..5,gamemode=adventure,team=saru] run summon area_effect_cloud ~ ~ ~ {Tags:["saru_death_noise"],Duration:2}
execute as @e[type=zombie,tag=saru_die,tag=saru_commander] at @s if entity @a[tag=playing,distance=..5,gamemode=adventure,team=saru] run summon area_effect_cloud ~ ~ ~ {Tags:["saru_death_noise","saru_commander_death_noise"],Duration:2}


effect give @a[tag=playing,team=saru,gamemode=adventure,scores={saru_lives=1..}] speed 10000 0 true
execute as @a[tag=playing,team=saru,scores={death=1..},gamemode=adventure] at @s run function scenario:stop_a_robot_uprising/die

execute as @a[tag=playing,team=saru,gamemode=adventure,scores={saru_lives=2..}] at @s run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"saru_lives","name":"@s"},"color":"red","bold":false},{"text":" Lives","color":"red","bold":false},{"text":"]","color":"gold","bold":true}]
execute as @a[tag=playing,team=saru,gamemode=adventure,scores={saru_lives=1}] at @s run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"saru_lives","name":"@s"},"color":"red","bold":false},{"text":" Life","color":"red","bold":false},{"text":"]","color":"gold","bold":true}]
##playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 0.5

#activity:
execute if score $saru active_scenario matches 1 if score $time saru_timer matches 1.. run schedule function scenario:stop_a_robot_uprising/active 1t
execute if score $saru active_scenario matches 1 unless entity @a[team=saru] run function scenario:stop_a_robot_uprising/end

kill @e[type=experience_orb,x=29000,y=66,z=0,distance=..500]
kill @e[type=item,x=29000,y=66,z=0,distance=..500,nbt={Item:{id:"minecraft:zombie_head"}}]
kill @e[type=item,x=29000,y=66,z=0,distance=..500,nbt={Item:{id:"minecraft:skeleton_skull"}}]


##arrows
execute as @e[type=skeleton,tag=saru_archer] at @s positioned ~ ~1 ~ run tag @e[type=arrow,distance=..1,tag=!saru_unfriendly_arrow] add saru_friendly_arrow
tag @e[type=arrow,x=29000,y=66,z=0,distance=..500] add saru_unfriendly_arrow
execute as @e[type=zombie,tag=saru_tank] at @s if entity @e[type=arrow,tag=!saru_friendly_arrow,distance=..8] run function scenario:stop_a_robot_uprising/destroy_arrow

##tnt guard
execute as @e[type=zombie,tag=saru_tnt] at @s run particle smoke ~ ~2 ~ 0.05 0.00 0.05 0.025 1
execute as @e[type=zombie,tag=saru_tnt] at @s if entity @a[tag=playing,team=saru,distance=..4,gamemode=adventure] run scoreboard players add @s saru_explode 3
execute as @e[type=zombie,tag=saru_tnt,scores={saru_explode=1..}] at @s unless entity @a[tag=playing,team=saru,distance=..4,gamemode=adventure] run scoreboard players set @s saru_explode 0
execute as @e[type=zombie,tag=saru_tnt,scores={saru_explode=40..42}] at @s run function scenario:stop_a_robot_uprising/tnt_warning
execute as @e[type=zombie,tag=saru_tnt,scores={saru_explode=100..}] at @s run function scenario:stop_a_robot_uprising/tnt_explode

execute as @e[type=skeleton,tag=saru_archer] at @s run particle item redstone ~ ~.5 ~ 2 2 2 0.25 3

##End game mechanics

execute store result score Commanders: saru_seconds if entity @e[type=zombie,tag=saru_commander]
execute if score Commanders: saru_seconds matches 0 as @a[tag=playing,team=saru,gamemode=adventure] at @s run function scenario:stop_a_robot_uprising/success
execute if score $time saru_timer matches 0 run function scenario:stop_a_robot_uprising/timer_over