execute if score $launch_left cs_sheep matches 1.. unless score $sheep_shown cs_sheep = $sheep cs_sheep run function scenario:count_sheep/launch_tree
execute if score $launch_left cs_sheep matches 0 unless score $sheep_shown cs_sheep = $sheep cs_sheep run scoreboard players set $launch cs_sheep 0
execute if score $sheep_shown cs_sheep = $sheep cs_sheep run scoreboard players set $launch cs_sheep 60
