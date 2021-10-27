# Give item
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["used_treasure","labyrinth_die","needs_id"]}

scoreboard players operation @e[type=area_effect_cloud,tag=used_treasure,distance=..2,sort=nearest,tag=needs_id,limit=1] id = @s id
scoreboard players set @e[type=area_effect_cloud,tag=used_treasure,distance=..2,sort=nearest,tag=needs_id,scores={id=0..},limit=1] maze_treasure 0
execute as @e[type=area_effect_cloud,tag=used_treasure,distance=..2,sort=nearest,tag=needs_id,scores={id=0..},limit=1] run tag @s remove needs_id
execute as @e[type=area_effect_cloud,tag=used_treasure,distance=..3,sort=nearest,limit=1] at @s run particle poof ~ ~1 ~ 0 0 0 .1 5 force
execute as @e[type=area_effect_cloud,tag=used_treasure,distance=..3,sort=nearest,limit=1] at @s run particle totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 .1 20 force

playsound entity.player.levelup master @s ~ ~ ~ 10 2
#give @s gold_block
scoreboard players add @s maze_treasure 1

execute if score @s maze_treasure matches ..4 run tellraw @s [{"text":"You found a treasure! (","color":"gold"},{"score":{"name":"@s","objective":"maze_treasure"},"bold":true},{"text":" / 5)"}]
execute if score @s maze_treasure matches ..4 run title @s subtitle [{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"maze_treasure"},"bold":true},{"text":" / 5)"}]
execute if score @s maze_treasure matches ..4 run title @s title {"text":"You found a treasure!","color":"gold"}

execute if score @s maze_treasure matches 5.. run tellraw @s [{"text":"Collected all treasures:","color":"gold"},{"text":" Run to the center beacon!","bold":true,"color":"red"}]
execute if score @s maze_treasure matches 5.. run title @s times 0 50 5
execute if score @s maze_treasure matches 5.. run title @s subtitle {"text":"Run to the center beacon!","color":"red","bold":true}
execute if score @s maze_treasure matches 5.. run title @s title {"text":"You have found enough treasures!","color":"gold"}
execute if score @s maze_treasure matches 5.. run title @s times 0 25 5