scoreboard players reset @s chest_clear
playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1

execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] run function lobby:tp_to_tutorial
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:diamond_helmet",tag:{clickable:1}}]}] run function chest_menu:start_cosmetics
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:command_block",tag:{clickable:1}}]}] run function chest_menu:start_credits
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:nether_star",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:written_book",tag:{clickable:1}}]}] unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] run function chest_menu:start_titles






##back buttons
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start
execute if entity @s[scores={screen=2..4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start_cosmetics
execute if entity @s[scores={screen=7}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start_podiums

execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:quartz_pillar",tag:{clickable:1}}]}] run function chest_menu:start_podiums
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:light_blue_banner",tag:{clickable:1}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:paper",tag:{clickable:1}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:gold_nugget",tag:{clickable:1}}]}] run function chest_menu:start_unlocks


execute if entity @s[scores={screen=5..6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:lapis_lazuli",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:diamond",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:emerald",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:glowstone_dust",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:gold_ingot",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:armor_stand",tag:{clickable:1}}]}] run function chest_menu:start_stats

##Credits

execute if entity @s[scores={screen=6}] if entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}},{id:"minecraft:book",tag:{clickable:1}}]}] run function chest_menu:start_credits
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] run function chest_menu:view_testers

##Podiums:

execute if entity @s[scores={screen=2}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:quartz_pillar",tag:{clickable:1}}]}] run scoreboard players set $change compare 0
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:ice",tag:{clickable:1}}]}] run scoreboard players set $change compare 1
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:nether_bricks",tag:{clickable:1}}]}] run scoreboard players set $change compare 2
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:end_stone",tag:{clickable:1}}]}] run scoreboard players set $change compare 3
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:oak_log",tag:{clickable:1}}]}] run scoreboard players set $change compare 4
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:stone",tag:{clickable:1}}]}] run scoreboard players set $change compare 5
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:dark_prismarine",tag:{clickable:1}}]}] run scoreboard players set $change compare 6
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:red_mushroom_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 7
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:sand",tag:{clickable:1}}]}] run scoreboard players set $change compare 8
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:redstone_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 9
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:warped_nylium",tag:{clickable:1}}]}] run scoreboard players set $change compare 10
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:crimson_nylium",tag:{clickable:1}}]}] run scoreboard players set $change compare 11
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:grass_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 12
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:cake",tag:{clickable:1}}]}] run scoreboard players set $change compare 13
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:acacia_log",tag:{clickable:1}}]}] run scoreboard players set $change compare 14
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:copper_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 15
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:chiseled_deepslate",tag:{clickable:1}}]}] run scoreboard players set $change compare 16
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:amethyst_cluster",tag:{clickable:1}}]}] run scoreboard players set $change compare 17
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:dripstone_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 18
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:white_banner",tag:{clickable:1}}]}] run scoreboard players set $change compare 19
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:end_portal_frame",tag:{clickable:1}}]}] run scoreboard players set $change compare 20
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:pink_glazed_terracotta",tag:{clickable:1}}]}] run scoreboard players set $change compare 21
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:melon",tag:{clickable:1}}]}] run scoreboard players set $change compare 22
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:stripped_spruce_log",tag:{clickable:1}}]}] run scoreboard players set $change compare 23
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:red_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 24
execute if entity @s[scores={screen=2}] if score $change compare matches 0.. run function chest_menu:change_podium


execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:emerald",tag:{clickable:1}}]}] run function chest_menu:start_podiums_2

execute if entity @s[scores={screen=7}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=7}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",tag:{clickable:1}}]}] run scoreboard players set $change compare 25
execute if entity @s[scores={screen=7}] unless entity @s[nbt={EnderItems:[{id:"minecraft:smooth_quartz",tag:{clickable:1}}]}] run scoreboard players set $change compare 26
execute if entity @s[scores={screen=7},tag=unlock_p_27] unless entity @s[nbt={EnderItems:[{id:"minecraft:emerald_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 27
execute if entity @s[scores={screen=7},tag=unlock_p_28] unless entity @s[nbt={EnderItems:[{id:"minecraft:pink_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 28
execute if entity @s[scores={screen=7},tag=unlock_p_29] unless entity @s[nbt={EnderItems:[{id:"minecraft:honey_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 29
execute if entity @s[scores={screen=7},tag=unlock_p_30] unless entity @s[nbt={EnderItems:[{id:"minecraft:dirt",tag:{clickable:1}}]}] run scoreboard players set $change compare 30
execute if entity @s[scores={screen=7},tag=unlock_p_31] unless entity @s[nbt={EnderItems:[{id:"minecraft:carved_pumpkin",tag:{clickable:1}}]}] run scoreboard players set $change compare 31
execute if entity @s[scores={screen=7},tag=unlock_p_32] unless entity @s[nbt={EnderItems:[{id:"minecraft:polished_blackstone_bricks",tag:{clickable:1}}]}] run scoreboard players set $change compare 32
execute if entity @s[scores={screen=7},tag=unlock_p_33] unless entity @s[nbt={EnderItems:[{id:"minecraft:light_gray_stained_glass",tag:{clickable:1}}]}] run scoreboard players set $change compare 33
execute if entity @s[scores={screen=7},tag=unlock_p_34] unless entity @s[nbt={EnderItems:[{id:"minecraft:moss_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 34
execute if entity @s[scores={screen=7},tag=unlock_p_35] unless entity @s[nbt={EnderItems:[{id:"minecraft:smooth_stone_slab",tag:{clickable:1}}]}] run scoreboard players set $change compare 35
execute if entity @s[scores={screen=7},tag=unlock_p_36] unless entity @s[nbt={EnderItems:[{id:"minecraft:purple_stained_glass_pane",tag:{clickable:1}}]}] run scoreboard players set $change compare 36
execute if entity @s[scores={screen=7},tag=unlock_p_37] unless entity @s[nbt={EnderItems:[{id:"minecraft:polished_deepslate",tag:{clickable:1}}]}] run scoreboard players set $change compare 37
execute if entity @s[scores={screen=7},tag=unlock_p_38] unless entity @s[nbt={EnderItems:[{id:"minecraft:exposed_copper",tag:{clickable:1}}]}] run scoreboard players set $change compare 38
execute if entity @s[scores={screen=7},tag=unlock_p_39] unless entity @s[nbt={EnderItems:[{id:"minecraft:blue_stained_glass",tag:{clickable:1}}]}] run scoreboard players set $change compare 39
execute if entity @s[scores={screen=7},tag=unlock_p_40] unless entity @s[nbt={EnderItems:[{id:"minecraft:magma_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 40
execute if entity @s[scores={screen=7},tag=unlock_p_41] unless entity @s[nbt={EnderItems:[{id:"minecraft:sticky_piston",tag:{clickable:1}}]}] run scoreboard players set $change compare 41

execute if entity @s[scores={screen=7},tag=unlock_p_42] unless entity @s[nbt={EnderItems:[{id:"minecraft:white_wool",tag:{clickable:1}}]}] run scoreboard players set $change compare 42
execute if entity @s[scores={screen=7},tag=unlock_p_43] unless entity @s[nbt={EnderItems:[{id:"minecraft:smooth_quartz",tag:{clickable:1}}]}] run scoreboard players set $change compare 43
execute if entity @s[scores={screen=7},tag=unlock_p_44] unless entity @s[nbt={EnderItems:[{id:"minecraft:player_head",tag:{clickable:1}}]}] run scoreboard players set $change compare 44
execute if entity @s[scores={screen=7},tag=unlock_p_45] unless entity @s[nbt={EnderItems:[{id:"minecraft:creeper_head",tag:{clickable:1}}]}] run scoreboard players set $change compare 45

execute if entity @s[scores={screen=7},tag=unlock_p_46] unless entity @s[nbt={EnderItems:[{id:"minecraft:black_wool",tag:{clickable:1}}]}] run scoreboard players set $change compare 46
execute if entity @s[scores={screen=7},tag=unlock_p_47] unless entity @s[nbt={EnderItems:[{id:"minecraft:stripped_warped_hyphae",tag:{clickable:1}}]}] run scoreboard players set $change compare 47
execute if entity @s[scores={screen=7},tag=unlock_p_48] unless entity @s[nbt={EnderItems:[{id:"minecraft:yellow_wool",tag:{clickable:1}}]}] run scoreboard players set $change compare 48
execute if entity @s[scores={screen=7},tag=unlock_p_49] unless entity @s[nbt={EnderItems:[{id:"minecraft:amethyst_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 49
execute if entity @s[scores={screen=7},tag=unlock_p_50] unless entity @s[nbt={EnderItems:[{id:"minecraft:lime_stained_glass",tag:{clickable:1}}]}] run scoreboard players set $change compare 50



execute if entity @s[scores={screen=7},tag=!unlock_p_27] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:1}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_28] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:2}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_29] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:3}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_30] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:4}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_31] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:5}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_32] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:6}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_33] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:7}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_34] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:8}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_35] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:9}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_36] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:10}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_37] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:11}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_38] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:12}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_39] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:13}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_40] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:14}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_41] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:15}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_42] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:16}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_43] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:17}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_44] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:18}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_45] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:19}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_46] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:20}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_47] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:21}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_48] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:22}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_49] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:23}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7},tag=!unlock_p_50] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:24}}]}] run function chest_menu:start_podiums_2
execute if entity @s[scores={screen=7}] if score $change compare matches 0.. run function chest_menu:change_podium

##Banners:

execute if entity @s[scores={screen=3}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:white_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 0
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:sunflower",tag:{clickable:1}}]}] run scoreboard players set $change compare 1
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:cartography_table",tag:{clickable:1}}]}] run scoreboard players set $change compare 2
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:bone",tag:{clickable:1}}]}] run scoreboard players set $change compare 3
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:golden_sword",tag:{clickable:1}}]}] run scoreboard players set $change compare 4
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:golden_apple",tag:{clickable:1}}]}] run scoreboard players set $change compare 5
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:oak_boat",tag:{clickable:1}}]}] run scoreboard players set $change compare 6
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:nether_brick",tag:{clickable:1}}]}] run scoreboard players set $change compare 7
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:blaze_rod",tag:{clickable:1}}]}] run scoreboard players set $change compare 8
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:cyan_glazed_terracotta",tag:{clickable:1}}]}] run scoreboard players set $change compare 9
execute if entity @s[scores={screen=3},tag=unlock_b_10] unless entity @s[nbt={EnderItems:[{id:"minecraft:pink_wool",tag:{clickable:1}}]}] run scoreboard players set $change compare 10
execute if entity @s[scores={screen=3},tag=unlock_b_11] unless entity @s[nbt={EnderItems:[{id:"minecraft:bowl",tag:{clickable:1}}]}] run scoreboard players set $change compare 11
execute if entity @s[scores={screen=3},tag=unlock_b_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:ice",tag:{clickable:1}}]}] run scoreboard players set $change compare 12
execute if entity @s[scores={screen=3},tag=unlock_b_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:feather",tag:{clickable:1}}]}] run scoreboard players set $change compare 13
execute if entity @s[scores={screen=3},tag=unlock_b_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:bamboo",tag:{clickable:1}}]}] run scoreboard players set $change compare 14
execute if entity @s[scores={screen=3},tag=unlock_b_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:golden_helmet",tag:{clickable:1}}]}] run scoreboard players set $change compare 15



execute if entity @s[scores={screen=3},tag=!unlock_b_10] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:1}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=3},tag=!unlock_b_11] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:2}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=3},tag=!unlock_b_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:3}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=3},tag=!unlock_b_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:4}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=3},tag=!unlock_b_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:5}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=3},tag=!unlock_b_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:6}}]}] run function chest_menu:start_banners
execute if entity @s[scores={screen=3}] if score $change compare matches 0.. run function chest_menu:change_banner



##Fans:

execute if entity @s[scores={screen=4}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:glass",tag:{clickable:1}}]}] run scoreboard players set $change compare 0
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:villager_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 1
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:shulker_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 2
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:cat_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 3
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:spruce_leaves",tag:{clickable:1}}]}] run scoreboard players set $change compare 4
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:elytra",tag:{clickable:1}}]}] run scoreboard players set $change compare 5
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:tnt",tag:{clickable:1}}]}] run scoreboard players set $change compare 6
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:stone_hoe",tag:{clickable:1}}]}] run scoreboard players set $change compare 7
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:potion",tag:{clickable:1}}]}] run scoreboard players set $change compare 8
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:melon",tag:{clickable:1}}]}] run scoreboard players set $change compare 9
execute if entity @s[scores={screen=4},tag=unlock_f_10] unless entity @s[nbt={EnderItems:[{id:"minecraft:repeating_command_block",tag:{clickable:1}}]}] run scoreboard players set $change compare 10
execute if entity @s[scores={screen=4},tag=unlock_f_11] unless entity @s[nbt={EnderItems:[{id:"minecraft:carved_pumpkin",tag:{clickable:1}}]}] run scoreboard players set $change compare 11
execute if entity @s[scores={screen=4},tag=unlock_f_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:elder_guardian_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 12
execute if entity @s[scores={screen=4},tag=unlock_f_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:pufferfish",tag:{clickable:1}}]}] run scoreboard players set $change compare 13
execute if entity @s[scores={screen=4},tag=unlock_f_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:parrot_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 14
execute if entity @s[scores={screen=4},tag=unlock_f_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:brain_coral_fan",tag:{clickable:1}}]}] run scoreboard players set $change compare 15

##Exclusives
execute if entity @s[scores={screen=4},tag=exclusive_jeb_sheep] unless entity @s[nbt={EnderItems:[{id:"minecraft:sheep_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 16
execute if entity @s[scores={screen=4},tag=exclusive_snow_fox] unless entity @s[nbt={EnderItems:[{id:"minecraft:fox_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 17


execute if entity @s[scores={screen=4},tag=!unlock_f_10] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:1}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=4},tag=!unlock_f_11] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:2}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=4},tag=!unlock_f_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:3}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=4},tag=!unlock_f_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:4}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=4},tag=!unlock_f_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:5}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=4},tag=!unlock_f_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,locked:6}}]}] run function chest_menu:start_fans
execute if entity @s[scores={screen=4}] if score $change compare matches 0.. run function chest_menu:change_fan

##Unlock screen

execute if score @s screen matches 18 if entity @s[advancements={advancements:lobby_all=true}] unless data entity @s EnderItems[{Slot:11b,id:"minecraft:name_tag"}] run scoreboard players set @s prefix 200
execute if score @s screen matches 18 if entity @s[advancements={advancements:lobby_all=true}] unless data entity @s EnderItems[{Slot:11b,id:"minecraft:name_tag"}] run function general:rank
execute if score @s screen matches 18 if entity @s[advancements={advancements:wins_all=true}] unless data entity @s EnderItems[{Slot:12b,id:"minecraft:globe_banner_pattern"}] run scoreboard players set @s banners 16
execute if score @s screen matches 18 if entity @s[advancements={advancements:scenario_all=true}] unless data entity @s EnderItems[{Slot:13b,id:"minecraft:note_block"}] run scoreboard players set @s podium 51
execute if score @s screen matches 18 if entity @s[advancements={advancements:game_all=true}] unless data entity @s EnderItems[{Slot:14b,id:"minecraft:pink_wool"}] run scoreboard players set @s fans 18
execute if score @s screen matches 18 if entity @s[advancements={advancements:completionist/completionist=true}] unless data entity @s EnderItems[{Slot:15b,id:"minecraft:gold_ingot"}] run function chest_menu:toggle_completionist_particles

execute if score @s screen matches 18 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function chest_menu:start_unlocks
execute if score @s screen matches 18 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function chest_menu:start_cosmetics




# titles
execute if score @s screen matches 99 run function chest_menu:click_titles


# advancement
advancement grant @s[scores={podium=1..,fans=1..,banners=1..}] only advancements:lobby_cosmetic

##execute if entity @s[scores={screen=3},tag=!unlock_t_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:1}}]}] run function chest_menu:start_podiums
##execute if entity @s[scores={screen=3},tag=!unlock_t_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:2}}]}] run function chest_menu:start_podiums
##execute if entity @s[scores={screen=3},tag=!unlock_t_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:3}}]}] run function chest_menu:start_podiums
##execute if entity @s[scores={screen=3},tag=!unlock_t_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:4}}]}] run function chest_menu:start_podiums
##execute if entity @s[scores={screen=3},tag=!unlock_t_16] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:5}}]}] run function chest_menu:start_podiums
##execute if entity @s[scores={screen=3},tag=!unlock_t_17] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:6}}]}] run function chest_menu:start_podiums

