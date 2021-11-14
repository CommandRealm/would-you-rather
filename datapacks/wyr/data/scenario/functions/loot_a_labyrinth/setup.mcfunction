scoreboard objectives add maze_random dummy
scoreboard objectives add maze_gen dummy
scoreboard objectives add maze_treasure dummy
scoreboard players set 4 maze_random 4
scoreboard players set 14002 maze_random 14002

clear @a[team=labyrinth]
gamemode adventure @a[team=labyrinth,gamemode=!adventure,tag=playing]
scoreboard players set @a maze_treasure 0

#kills:
tp @e[tag=labyrinth_die] 0 0 0
kill @e[tag=labyrinth_die]

##if scenario needs timer:
scoreboard objectives add labyrinth_timer dummy
scoreboard objectives add laby_seconds dummy {"text":"Time Remaining","color":"yellow","bold":true}

# Initiate Maze
function scenario:loot_a_labyrinth/gen/setup

execute if entity @a[team=labyrinth,tag=tutorial] run schedule function scenario:loot_a_labyrinth/tutorial_setup 40t
execute unless entity @a[team=labyrinth,tag=tutorial] run schedule function scenario:check_countdown 40t