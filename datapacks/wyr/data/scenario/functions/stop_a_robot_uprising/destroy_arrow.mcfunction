tp @s ~ ~ ~ facing entity @e[type=arrow,tag=!saru_friendly_arrow,distance=..8,sort=nearest,limit=1]
summon area_effect_cloud ~ ~1.75 ~ {Tags:["saru_raycast"],Duration:1}
execute as @e[type=area_effect_cloud,tag=saru_raycast,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=arrow,tag=!saru_friendly_arrow,distance=..8,sort=nearest,limit=1]
execute as @e[type=area_effect_cloud,tag=saru_raycast] at @s run function scenario:stop_a_robot_uprising/laser_raycast
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.5
kill @e[type=arrow,tag=!saru_friendly_arrow,distance=..8,sort=nearest,limit=1]
kill @e[type=area_effect_cloud,tag=saru_raycast]