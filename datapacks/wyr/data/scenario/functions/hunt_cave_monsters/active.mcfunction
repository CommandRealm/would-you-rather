scoreboard players remove $time hcm_timer 1
scoreboard players operation : hcm_timer = $time hcm_timer
scoreboard players operation : hcm_timer /= $20 number
scoreboard players add : hcm_timer 1
execute unless score : hcm_timer = : hcm_seconds run scoreboard players operation : hcm_seconds = : hcm_timer

execute if score $hcm active_scenario matches 1 if score $time hcm_timer matches 1.. run schedule function scenario:hunt_cave_monsters/active 1t
execute if score $hcm active_scenario matches 1 unless entity @a[team=hcm] run function scenario:hunt_cave_monsters/end
kill @e[type=arrow,x=19000,y=66,z=0,distance=..300,nbt={inGround:1b}]
execute as @e[type=phantom,x=19000,y=66,z=0,distance=..300] at @s run data merge entity @s {Fire:0s}
kill @e[type=experience_orb,x=19000,y=66,z=0,distance=..300]

execute as @a[team=hcm,tag=playing,gamemode=adventure,scores={hcm_kill_blaze=1..}] at @s run function scenario:hunt_cave_monsters/kill_blaze
execute as @a[team=hcm,tag=playing,gamemode=adventure,scores={hcm_kill_phantom=1..}] at @s run function scenario:hunt_cave_monsters/kill_phantom
execute as @a[team=hcm,tag=playing,gamemode=adventure,scores={hcm_kill_bee=1..}] at @s run function scenario:hunt_cave_monsters/kill_bee
execute as @a[team=hcm,tag=playing,gamemode=adventure,scores={hcm_kill_parrot=1..}] at @s run function scenario:hunt_cave_monsters/kill_parrot
execute as @a[team=hcm,tag=playing,gamemode=adventure,scores={hcm_kill_vex=1..}] at @s run function scenario:hunt_cave_monsters/kill_vex
execute as @a[team=hcm,tag=playing,gamemode=adventure,scores={hcm_kill_bat=1..}] at @s run function scenario:hunt_cave_monsters/kill_bat

scoreboard players remove @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_shoot=1..}] hcm_arrow 1
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=0}] if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run give @s arrow{display:{Name:'[{"text":"Arrow","color":"gray","italic":false}]'}} 1
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=0}] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run item replace entity @s hotbar.8 with arrow{display:{Name:'[{"text":"Arrow","color":"gray","italic":false}]'}} 1
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 2 1
scoreboard players reset @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=0}] hcm_shoot
scoreboard players set @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=0}] hcm_arrow 50
execute as @a[tag=playing,team=hcm,gamemode=adventure] at @s run title @s actionbar [{"text":"Goal: ","color":"yellow","bold":false},{"text":"[","color":"yellow","bold":false},{"score":{"objective":"hcm_points","name":"@s"},"color":"gold","bold":true},{"text":"/","color":"red","bold":false},{"text":"25","color":"gold","bold":true},{"text":"]","color":"yellow","bold":false}]
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_points=25..}] at @s run function scenario:hunt_cave_monsters/success
execute if score $time hcm_timer matches 0 run tellraw @a[tag=playing,team=hcm,gamemode=adventure] [{"text":"Time is up! You didn't hunt enough monsters.","color":"red"}]
execute if score $time hcm_timer matches 0 as @a[tag=playing,team=hcm,gamemode=adventure] at @s run playsound minecraft:entity.parrot.death master @s ~ ~ ~ 1000 0
execute if score $time hcm_timer matches 0 as @a[tag=playing,team=hcm,gamemode=adventure] at @s run function scenario:hunt_cave_monsters/fail
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={death=1..}] at @s run function scenario:hunt_cave_monsters/fail


execute as @a[tag=playing,team=hcm,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run function scenario:hunt_cave_monsters/get_bow
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=1..}] at @s unless entity @s[scores={hcm_shoot=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run scoreboard players set @s hcm_shoot 1
execute as @a[tag=playing,team=hcm,gamemode=adventure,scores={hcm_arrow=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run function scenario:hunt_cave_monsters/get_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..200,x=19000,y=66,z=0]