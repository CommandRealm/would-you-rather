function scenario:deactivate_scenarios
##order is flipped here to try and combat bug where setup doesnt run.
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness"] run schedule function scenario:survive_in_the_wilderness/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness"] run function scenario:survive_in_the_wilderness/teleport

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Grade a math test"] run function scenario:grade_a_math_test/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Grade a math test"] run schedule function scenario:grade_a_math_test/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]"] run function scenario:become_a_miner_old/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]"] run schedule function scenario:become_a_miner_old/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner"] run function scenario:become_a_miner/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner"] run schedule function scenario:become_a_miner/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem"] run function scenario:steal_a_gem/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem"] run schedule function scenario:steal_a_gem/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory"] run function scenario:work_in_an_anvil_factory/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory"] run schedule function scenario:work_in_an_anvil_factory/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT"] run function scenario:defuse_tnt/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT"] run schedule function scenario:defuse_tnt/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse"] run function scenario:survive_a_ghast_a/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse"] run schedule function scenario:survive_a_ghast_a/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball"] run function scenario:play_dodgeball/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball"] run schedule function scenario:play_dodgeball/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer"] run function scenario:become_a_fan/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer"] run schedule function scenario:become_a_fan/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Drink dangerous potions"] run function scenario:drink_potions/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Drink dangerous potions"] run schedule function scenario:drink_potions/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters"] run function scenario:hunt_cave_monsters/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters"] run schedule function scenario:hunt_cave_monsters/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play 'Gene Says'"] run function scenario:play_gene_says/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play 'Gene Says'"] run schedule function scenario:play_gene_says/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep"] run function scenario:count_sheep/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep"] run schedule function scenario:count_sheep/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising"] run function scenario:stop_a_robot_uprising/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising"] run schedule function scenario:stop_a_robot_uprising/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village"] run function scenario:parkour_through_a_sky_village/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village"] run schedule function scenario:parkour_through_a_sky_village/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing"] run function scenario:go_fishing/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing"] run schedule function scenario:go_fishing/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play the piano"] run function scenario:play_the_piano/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play the piano"] run schedule function scenario:play_the_piano/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats"] run function scenario:avoid_radioactive_bats/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats"] run schedule function scenario:avoid_radioactive_bats/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm"] run function scenario:scale_a_storm/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm"] run schedule function scenario:scale_a_storm/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups"] run function scenario:cook_mushroom_soups/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups"] run schedule function scenario:cook_mushroom_soups/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty"] run function scenario:rescue_royalty/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty"] run schedule function scenario:rescue_royalty/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves"] run function scenario:find_thieves/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves"] run schedule function scenario:find_thieves/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava"] run function scenario:outrun_lava/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava"] run schedule function scenario:outrun_lava/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab"] run function scenario:explore_a_deserted_lab/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab"] run schedule function scenario:explore_a_deserted_lab/setup 50t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope"] run function scenario:walk_a_tightrope/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope"] run schedule function scenario:walk_a_tightrope/setup 50t

# 1.17.1 Update
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth"] run function scenario:loot_a_labyrinth/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth"] run schedule function scenario:loot_a_labyrinth/setup 50t

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button"] run function scenario:not_push_a_button/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button"] run schedule function scenario:not_push_a_button/setup 50t

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving"] run function scenario:skydive/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving"] run schedule function scenario:skydive/setup 50t

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion"] run function scenario:repel_a_nether_invasion/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion"] run schedule function scenario:repel_a_nether_invasion/setup 50t

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant"] run function scenario:feed_a_giant/teleport
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant"] run schedule function scenario:feed_a_giant/setup 50t


##
tag @a remove success
tag @a remove fail
bossbar set minecraft:choosetime visible false
scoreboard players set $time game_countdown 120
bossbar set minecraft:bettime value 200
scoreboard players reset @a[tag=playing] tutorial
tag @a remove in_tutorial
title @a[tag=playing] subtitle {"text":" "}
scoreboard players set @a[gamemode=spectator] spectator -5
schedule function scenario:general_setup 50t