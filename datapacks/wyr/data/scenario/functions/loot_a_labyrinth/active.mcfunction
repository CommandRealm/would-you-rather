#timer:
scoreboard players remove $time labyrinth_timer 1
scoreboard players operation : labyrinth_timer = $time labyrinth_timer
scoreboard players operation : labyrinth_timer /= $20 number
scoreboard players add : labyrinth_timer 1
execute unless score : labyrinth_timer = : laby_seconds run scoreboard players operation : laby_seconds = : labyrinth_timer

# (Parking Lot Patch) Give speed to make scenario faster
effect give @a[team=labyrinth,gamemode=adventure] speed 3 1 true

# Scenario Logic:
execute as @a[team=labyrinth,gamemode=adventure] at @s if entity @e[type=item,tag=maze_treasure,distance=..30] run function scenario:loot_a_labyrinth/treasure/check_pickup
execute as @a[team=labyrinth,gamemode=adventure,scores={maze_treasure=..4}] run title @s actionbar [{"text":"Treasure Collected: ","color":"gold"},{"score":{"name":"@s","objective":"maze_treasure"},"bold":true},{"text":" / 5"}]
execute as @a[team=labyrinth,gamemode=adventure,scores={maze_treasure=5..}] run title @s actionbar [{"text":"Collected all treasures:","color":"gold"},{"text":" Run to the center beacon!","bold":true,"color":"red"}]
execute as @e[type=area_effect_cloud,tag=used_treasure,scores={maze_treasure=..61}] run scoreboard players add @s maze_treasure 1

particle dust_color_transition 1 0.984 0 1 1 0.816 0 14032 2 14032 .15 17 .15 1 50 force @a[team=labyrinth,gamemode=adventure,scores={maze_treasure=5..}]

execute as @a[team=labyrinth,gamemode=adventure,scores={maze_treasure=5..}] at @s if block ~ ~-1 ~ beacon run function scenario:loot_a_labyrinth/success
execute if score $time labyrinth_timer matches 0 as @a[team=labyrinth,gamemode=adventure] at @s run function scenario:loot_a_labyrinth/fail
#activity:
execute if score $labyrinth active_scenario matches 1 if score $time labyrinth_timer matches 1.. run schedule function scenario:loot_a_labyrinth/active 1t
execute if score $labyrinth active_scenario matches 1 unless entity @a[team=labyrinth] run function scenario:loot_a_labyrinth/end