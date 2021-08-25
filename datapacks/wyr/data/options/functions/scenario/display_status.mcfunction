execute as @e[type=area_effect_cloud,tag=scenario_options_title,tag=scenario_options_status] at @s run data merge entity @s {CustomNameVisible:0b}
kill @e[type=area_effect_cloud,tag=scenario_options_title,tag=scenario_options_status]
execute if score $number scenario_screen matches 1 if entity @e[type=area_effect_cloud,tag=scenario,name="Avoid radioactive bats"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 1 unless entity @e[type=area_effect_cloud,tag=scenario,name="Avoid radioactive bats"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 2 if entity @e[type=area_effect_cloud,tag=scenario,name="Become a fan engineer"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 2 unless entity @e[type=area_effect_cloud,tag=scenario,name="Become a fan engineer"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 3 if entity @e[type=area_effect_cloud,tag=scenario,name="Become a miner"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 3 unless entity @e[type=area_effect_cloud,tag=scenario,name="Become a miner"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 4 if entity @e[type=area_effect_cloud,tag=scenario,name="Cook mushroom soups"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 4 unless entity @e[type=area_effect_cloud,tag=scenario,name="Cook mushroom soups"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 5 if entity @e[type=area_effect_cloud,tag=scenario,name="Count sheep"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 5 unless entity @e[type=area_effect_cloud,tag=scenario,name="Count sheep"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 6 if entity @e[type=area_effect_cloud,tag=scenario,name="Defuse TNT"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 6 unless entity @e[type=area_effect_cloud,tag=scenario,name="Defuse TNT"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 7 if entity @e[type=area_effect_cloud,tag=scenario,name="Drink dangerous potions"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 7 unless entity @e[type=area_effect_cloud,tag=scenario,name="Drink dangerous potions"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 8 if entity @e[type=area_effect_cloud,tag=scenario,name="Explore a deserted lab"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 8 unless entity @e[type=area_effect_cloud,tag=scenario,name="Explore a deserted lab"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 9 if entity @e[type=area_effect_cloud,tag=scenario,name="Find thieves"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 9 unless entity @e[type=area_effect_cloud,tag=scenario,name="Find thieves"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 10 if entity @e[type=area_effect_cloud,tag=scenario,name="Go fishing"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 10 unless entity @e[type=area_effect_cloud,tag=scenario,name="Go fishing"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 11 if entity @e[type=area_effect_cloud,tag=scenario,name="Grade a math test"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 11 unless entity @e[type=area_effect_cloud,tag=scenario,name="Grade a math test"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 12 if entity @e[type=area_effect_cloud,tag=scenario,name="Hunt cave monsters"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 12 unless entity @e[type=area_effect_cloud,tag=scenario,name="Hunt cave monsters"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 13 if entity @e[type=area_effect_cloud,tag=scenario,name="Outrun lava"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 13 unless entity @e[type=area_effect_cloud,tag=scenario,name="Outrun lava"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 14 if entity @e[type=area_effect_cloud,tag=scenario,name="Parkour through a sky village"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 14 unless entity @e[type=area_effect_cloud,tag=scenario,name="Parkour through a sky village"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 15 if entity @e[type=area_effect_cloud,tag=scenario,name="Play dodgeball"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 15 unless entity @e[type=area_effect_cloud,tag=scenario,name="Play dodgeball"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 16 if entity @e[type=area_effect_cloud,tag=scenario,name="Play 'Gene Says'"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 16 unless entity @e[type=area_effect_cloud,tag=scenario,name="Play 'Gene Says'"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 17 if entity @e[type=area_effect_cloud,tag=scenario,name="Play the piano"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 17 unless entity @e[type=area_effect_cloud,tag=scenario,name="Play the piano"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 18 if entity @e[type=area_effect_cloud,tag=scenario,name="Rescue royalty"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 18 unless entity @e[type=area_effect_cloud,tag=scenario,name="Rescue royalty"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 19 if entity @e[type=area_effect_cloud,tag=scenario,name="Scale a storm"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 19 unless entity @e[type=area_effect_cloud,tag=scenario,name="Scale a storm"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 20 if entity @e[type=area_effect_cloud,tag=scenario,name="Steal a gem"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 20 unless entity @e[type=area_effect_cloud,tag=scenario,name="Steal a gem"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 21 if entity @e[type=area_effect_cloud,tag=scenario,name="Stop a robot uprising"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 21 unless entity @e[type=area_effect_cloud,tag=scenario,name="Stop a robot uprising"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 22 if entity @e[type=area_effect_cloud,tag=scenario,name="Survive a ghast apocalypse"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 22 unless entity @e[type=area_effect_cloud,tag=scenario,name="Survive a ghast apocalypse"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 23 if entity @e[type=area_effect_cloud,tag=scenario,name="Survive in the wilderness"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 23 unless entity @e[type=area_effect_cloud,tag=scenario,name="Survive in the wilderness"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 24 if entity @e[type=area_effect_cloud,tag=scenario,name="Walk a tightrope"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 24 unless entity @e[type=area_effect_cloud,tag=scenario,name="Walk a tightrope"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}

execute if score $number scenario_screen matches 25 if entity @e[type=area_effect_cloud,tag=scenario,name="Work in an anvil factory"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"ON","color":"dark_green","bold":true}]'}
execute if score $number scenario_screen matches 25 unless entity @e[type=area_effect_cloud,tag=scenario,name="Work in an anvil factory"] run summon area_effect_cloud -927.0 64.5 -136 {Tags:["scenario_options_title","scenario_options_status"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Status: ","color":"gold"},{"text":"OFF","color":"dark_red","bold":true}]'}
