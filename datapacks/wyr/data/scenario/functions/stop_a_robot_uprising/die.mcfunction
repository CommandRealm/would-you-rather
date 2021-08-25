scoreboard players set @s death 0
scoreboard players remove @s saru_lives 1
playsound minecraft:entity.skeleton.death master @s ~ ~ ~ 10000 0
tellraw @s[scores={saru_lives=2..}] [{"text":"You have died! You now have ","color":"gold"},{"score":{"objective":"saru_lives","name":"@s"},"color":"red","bold":true},{"text":" lives.","color":"gold","bold":false}]
tellraw @s[scores={saru_lives=1}] [{"text":"You have died! You now have ","color":"gold"},{"score":{"objective":"saru_lives","name":"@s"},"color":"red","bold":true},{"text":" life.","color":"gold","bold":false}]
tellraw @s[scores={saru_lives=0}] [{"text":"You have died! You have lost. ","color":"gold"}]
function scenario:stop_a_robot_uprising/get_items


##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~2 ~ ~ run function scenario:stop_a_robot_uprising/random_guard
##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~-2 ~ ~ run function scenario:stop_a_robot_uprising/random_guard
##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~ ~ ~2 run function scenario:stop_a_robot_uprising/random_guard
##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~ ~ ~-2 run function scenario:stop_a_robot_uprising/random_guard



execute if entity @s[scores={saru_lives=0}] at @s run function scenario:stop_a_robot_uprising/fail

execute as @a[tag=playing,team=saru] at @s run playsound minecraft:entity.player.death master @s ~ ~ ~ 1 0