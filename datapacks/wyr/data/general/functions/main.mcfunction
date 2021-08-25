#called from #minecraft:tick
#always running

execute as @a[scores={leave=1..}] at @s run function general:leave

scoreboard players add @a timeon 0
execute as @a[scores={timeon=0}] at @s run function general:join_game

execute as @a[tag=!playing] at @s unless entity @s[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]}] run effect give @s saturation 2 255 true
effect give @a[tag=!hungry,tag=playing] saturation 1 255 true

execute if score $game state matches 0 run function pregame:main

execute if score $game state matches 1 run function game:main

execute if entity @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] run function lobby:main

execute as @e[tag=infinite] at @s run data merge entity @s {Duration:1000000}

execute as @e[type=area_effect_cloud,tag=spin] at @s run tp @s ~ ~ ~ ~15 ~