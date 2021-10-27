scoreboard players set $time labyrinth_timer 3600
scoreboard players set $labyrinth active_scenario 1
fill 14036 17 14028 14028 2 14036 air replace minecraft:iron_bars
fill 14031 0 14031 14033 0 14033 iron_block
function scenario:loot_a_labyrinth/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue laby_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow laby_seconds