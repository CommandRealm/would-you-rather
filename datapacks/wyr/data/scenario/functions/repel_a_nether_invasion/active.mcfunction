#timer:
scoreboard players remove $time rani_timer 1
scoreboard players operation : rani_timer = $time rani_timer
scoreboard players operation : rani_timer /= $20 number
scoreboard players add : rani_timer 1
execute unless score : rani_timer = : rani_seconds run scoreboard players operation : rani_seconds = : rani_timer

# spawning
scoreboard players remove $spawn_timer rani_timer 1
execute if score $spawn_timer rani_timer matches ..0 as @e[type=marker,tag=rani_spawn,sort=random,limit=1] at @s run function scenario:repel_a_nether_invasion/spawn




#activity:
execute if score $rani active_scenario matches 1 if score $time rani_timer matches 1.. run schedule function scenario:repel_a_nether_invasion/active 1t
execute if score $rani active_scenario matches 1 unless entity @a[team=rani] run function scenario:repel_a_nether_invasion/end

# killing xp
kill @e[type=experience_orb,x=10000,y=66,z=0,distance=..500]

# particles
execute as @a[team=rani] at @s run particle ash ~ ~ ~ 10 10 10 0.25 50

# killing magma cubes
tp @e[type=magma_cube,x=10000,y=66,z=0,distance=..500,tag=!rani_die] 0 0 0
kill @e[type=magma_cube,x=10000,y=66,z=0,distance=..500,tag=!rani_die]

# when players get kills
execute as @a[team=rani,gamemode=adventure,scores={rani_skele=1..}] at @s run function scenario:repel_a_nether_invasion/kill_skele
execute as @a[team=rani,gamemode=adventure,scores={rani_blaze=1..}] at @s run function scenario:repel_a_nether_invasion/kill_blaze
execute as @a[team=rani,gamemode=adventure,scores={rani_cube=1..}] at @s run function scenario:repel_a_nether_invasion/kill_cube
execute as @a[team=rani,gamemode=adventure,scores={rani_player=1..}] at @s run function scenario:repel_a_nether_invasion/kill_player

# actionbar
execute as @a[team=rani,gamemode=adventure,scores={rani_kills_left=1..}] at @s run title @s actionbar [{"text":"Kills","color":"dark_red"},{"text":" required","color":"red"},{"text":": ","color":"gray"},{"score":{"objective": "rani_kills_left","name":"@s"},"color":"gold","bold":true}]

title @a[team=rani,gamemode=adventure,scores={rani_kills_left=0}] actionbar [{"text":"Reach","color":"dark_red"},{"text":" the ","color":"gray"},{"text":"BEACON","color":"red","bold":true,"underlined":true}]
execute as @a[team=rani,gamemode=adventure,scores={rani_kills_left=0}] at @s if block ~ 1 ~ emerald_block run function scenario:repel_a_nether_invasion/success

# particles
execute at @e[type=wither_skeleton,tag=rani_enemy] run particle soul ~ ~1 ~ 0.25 0.5 0.25 0.33 1
execute at @e[type=magma_cube,tag=rani_enemy] run particle lava ~ ~1 ~ 0.25 0.5 0.25 0.33 1

# death
execute as @a[tag=playing,gamemode=adventure,x=10000,y=66,z=0,distance=..500,scores={death=1..}] at @s run function scenario:repel_a_nether_invasion/die

# if a dead player is respawning
execute if entity @a[tag=playing,scores={rani_d_cool=1..},team=rani_dead] run function scenario:repel_a_nether_invasion/respawning

# armor on dead players
execute as @a[tag=playing,team=rani_dead] at @s unless data entity @s {Inventory:[{Slot:100b,id:"minecraft:leather_boots"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:103b,id:"minecraft:wither_skeleton_skull"}]} run function scenario:repel_a_nether_invasion/undead/get_armor