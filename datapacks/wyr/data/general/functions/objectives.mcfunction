#not called from any function
#purpose is to add objectives
scoreboard objectives add ready dummy
scoreboard objectives add rc minecraft.used:minecraft.knowledge_book
scoreboard objectives add rplayers dummy
scoreboard objectives add nplayers dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add timeon dummy
scoreboard objectives add joinsong dummy
scoreboard objectives add alternate dummy
scoreboard objectives add state dummy
scoreboard players add $game state 0
scoreboard objectives add startup_timer dummy
scoreboard objectives add startup_title dummy
scoreboard objectives add number dummy
scoreboard players set $20 number 20
scoreboard objectives add alternate20 dummy
scoreboard objectives add showstart dummy
scoreboard objectives add podium dummy
scoreboard objectives add id dummy
scoreboard objectives add podium_id dummy
scoreboard objectives add podium_clone dummy
scoreboard objectives add gene dummy
scoreboard objectives add clap dummy
scoreboard objectives add clap5 dummy
scoreboard objectives add theme dummy
scoreboard objectives add comercial dummy
team add blue
team add yellow
team modify blue color blue
team modify yellow color yellow

team add wyr
gamerule doImmediateRespawn true
team modify wyr color dark_aqua

team add select

team modify select color aqua

bossbar add guesstime {"text":"Time Remaining","color":"gray","bold":true}
bossbar set minecraft:guesstime max 300
bossbar set minecraft:guesstime color white
bossbar set minecraft:guesstime style progress

bossbar add choosetime {"text":"Time Remaining","color":"dark_green","bold":true}
bossbar set minecraft:choosetime max 200
bossbar set minecraft:choosetime style progress
bossbar set minecraft:choosetime color green

bossbar add bettime {"text":"Time Remaining","color":"dark_purple","bold":true}
bossbar set minecraft:bettime max 200
bossbar set minecraft:bettime style progress
bossbar set minecraft:bettime color purple


scoreboard objectives add guess_bar dummy

scoreboard objectives add beat dummy
scoreboard objectives add choose_bar dummy

scoreboard objectives add bet_bar dummy

scoreboard objectives add drop_succeed minecraft.dropped:minecraft.lime_concrete
scoreboard objectives add drop_abstain minecraft.dropped:minecraft.purple_concrete
scoreboard objectives add drop_fail minecraft.dropped:minecraft.red_concrete

scoreboard objectives add game_countdown dummy

scoreboard objectives add points_criteria dummy
scoreboard players add $points points_criteria 0
execute if score $points points_criteria matches 0 run scoreboard players set $points points_criteria 10
scoreboard objectives add check_tie dummy
scoreboard objectives add playing dummy {"text":" - P l a y i n g -","color":"aqua"}

scoreboard objectives add active dummy

scoreboard objectives add campfire dummy

scoreboard objectives add timer dummy
scoreboard objectives add death deathCount
scoreboard objectives add timer_seconds dummy

team modify seconds color gold

team add seconds

team join seconds :


team add semicolon

team join semicolon ;

scoreboard objectives add round dummy

scoreboard objectives add round_criteria dummy

scoreboard objectives add cheer dummy
scoreboard objectives add jeer dummy

scoreboard objectives add c_cooldown dummy
scoreboard objectives add clap_r dummy
scoreboard players set $modulo clap_r 12
scoreboard players set $modulo gene 8
scoreboard objectives add check_gene dummy
scoreboard objectives add gene_entrance dummy
scoreboard objectives add gene_timer dummy
scoreboard objectives add gene_rotation dummy
scoreboard objectives add gene_motion dummy
team add round
team modify round color yellow
team join round Round:
scoreboard objectives add scenario_sel dummy
scoreboard objectives add random dummy
scoreboard objectives add active_scenario dummy
scoreboard objectives add check_players dummy
scoreboard objectives add adjust_points dummy
team modify seconds prefix {"text":"Seconds","color":"gold"}
team add aqua
team modify aqua color aqua
team add dark_aqua
team modify dark_aqua color dark_aqua


team add lobby
team add test
team add help
team add bld
team add prg
team add srbld
team add srprg
team add lead
team modify lobby color aqua
team modify test color aqua
team modify help color aqua
team modify bld color aqua
team modify prg color aqua
team modify srbld color aqua
team modify srprg color aqua
team modify lead color aqua
team modify lobby color aqua
team modify test prefix {"text":"(Tester) ","color":"aqua"}
team modify help prefix {"text":"[Helper] ","color":"dark_aqua"}
team modify bld prefix {"text":"{Builder} ","color":"blue"}
team modify prg prefix {"text":"{Programmer} ","color":"red"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify lead prefix [{"text":"{","color":"dark_purple","bold":true},{"text":"Project Lead","bold":false},{"text":"} ","bold":true}]
scoreboard objectives add points_for_win dummy
scoreboard objectives add store_players dummy

team add pc_role
team modify pc_role color aqua
team modify pc_role prefix [{"text":"(","color":"dark_gray"},{"text":"pc","color":"green","bold":true},{"text":") ","color":"dark_gray"}]


scoreboard objectives add vending_machine dummy
scoreboard objectives add spectator dummy

kill @e[type=area_effect_cloud,tag=vending_machine]
summon area_effect_cloud -914 80 -126 {Duration:100000000,Tags:["vending_machine"]}
summon area_effect_cloud -914 80 -121 {Duration:100000000,Tags:["vending_machine"]}
summon area_effect_cloud -956 80 -122 {Duration:100000000,Tags:["vending_machine"]}
summon area_effect_cloud -956 80 -127 {Duration:100000000,Tags:["vending_machine"]}
scoreboard players set @e[type=area_effect_cloud,tag=vending_machine] vending_machine 0
scoreboard objectives add d_hunger food
scoreboard objectives add hunger dummy
scoreboard objectives add awards dummy
scoreboard players add $number awards 0
scoreboard objectives add tutorial dummy
scoreboard players add $number tutorial 0




kill @e[tag=tutorial_asset]
summon armor_stand -926 75 -76 {DisabledSlots:2039583,Pose:{RightArm:[-90.0f,90.0f,10.0f],LeftArm:[-95.0f,-100.0f,0.0f],Head:[15.0f,0.0f,0.0f],RightLeg:[1.0f,5.0f,1.0f],LeftLeg:[0.0f,5.0f,-1.0f]},Rotation:[90.0f,0.0f],Tags:["tutorial_asset","tutorial_gene"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}


summon armor_stand -932 75 -67 {Invulnerable:1b,Tags:["tutorial_asset"],PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,2f,0f],Head:[345f,17f,0f],LeftLeg:[14f,0f,0f],RightLeg:[351f,0f,0f],LeftArm:[332f,0f,0f],RightArm:[253f,41f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14626359}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;330360168,1025720900,-1537409828,-1774021966],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmUwYzEzMTVkNTQyOGYwYTJiZDVlZDcyYjdjNmFlMDIwZWZiZDkwMDNiOWM1NWYwMWRjNDI5YWU5ZGI5NjMxZSJ9fX0="}]}}}}],Rotation:[150.0f,0.0f]}

summon armor_stand -933 75 -66 {Invulnerable:1b,Tags:["tutorial_asset"],PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Head:[17f,0f,0f],LeftLeg:[352f,317f,0f],RightLeg:[-5f,10f,0f],LeftArm:[283f,290f,0f],RightArm:[284f,57f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:10749968}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3179040}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10749968}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-239457617,777339167,-2033027043,-680851523],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGJiZWM2ZjZmYTJkOGJlZmM5YjlmYTI3YmIzMWFhNzU0MjAzYmE4NTRiYWY5ZGU5MzQzNGFiZGUyOGM0YzBlYyJ9fX0="}]}}}}],Rotation:[130.0f,0.0f]}

summon armor_stand -938 75 -67 {Invulnerable:1b,Tags:["tutorial_asset"],PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,356f,0f],Head:[0f,345f,343f],LeftLeg:[4f,0f,0f],RightLeg:[3f,329f,7f],LeftArm:[225f,284f,0f],RightArm:[202f,0f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16578304}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9737364}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;242460086,1880637443,-1467118811,2005526263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}}}}],Rotation:[230.0f,0.0f]}





##/summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,356f,0f],Head:[0f,345f,343f],LeftLeg:[4f,0f,0f],RightLeg:[3f,329f,0f],LeftArm:[225f,284f,0f],RightArm:[202f,0f,0f]}}



scoreboard objectives add tutor_animation dummy
scoreboard players add @e[tag=tutorial_asset,type=armor_stand] tutor_animation 0
scoreboard objectives add tutor_pose dummy
summon minecraft:item_frame -944 76 -73 {Tags:["tutorial_asset"],Facing:1b,Rotation:[0.0f,90.0f],Fixed:1b,Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'[{"text":"Sticky-Feet Award","color":"dark_aqua","bold":true}]'}}},ItemRotation:6b}
summon minecraft:item_frame -945 76 -76 {Tags:["tutorial_asset"],Facing:1b,Rotation:[0.0f,90.0f],Fixed:1b,Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'[{"text":"Marathon Award","color":"dark_aqua","bold":true}]'}}},ItemRotation:6b}
summon minecraft:item_frame -944 76 -79 {Tags:["tutorial_asset"],Facing:1b,Rotation:[0.0f,90.0f],Fixed:1b,Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'[{"text":"Safety Award","color":"dark_aqua","bold":true}]'}}},ItemRotation:6b}

scoreboard objectives add fast_mode dummy
scoreboard objectives add skip_coop dummy
scoreboard objectives add auto_ready dummy
scoreboard players add $number fast_mode 0
scoreboard players add $number skip_coop 0
scoreboard players add $number auto_ready 0
scoreboard objectives add fans dummy
scoreboard objectives add parrot_timer dummy



kill @e[type=area_effect_cloud,tag=lobby_popup]
summon area_effect_cloud -935 80 -142 {Tags:["lobby_popup"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Menu","color":"#11f7c9","underlined":true}]'}
summon area_effect_cloud -932 81 -142 {Tags:["lobby_popup"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Tutorial","color":"blue","underlined":true}]'}
summon area_effect_cloud -938 81 -142 {Tags:["lobby_popup"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Scenario Options","color":"yellow","underlined":true}]'}


kill @e[type=area_effect_cloud,tag=lobby_banner]

summon area_effect_cloud -914 85 -118 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -914 88 -107 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -919 91 -98 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -956 85 -118 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -956 88 -107 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -951 91 -98 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -937 80 -119 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -933 80 -119 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -931 82 -153 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -939 82 -153 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -931 82 -169 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -939 82 -169 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -941 76 -90 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -929 76 -90 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -933 87 -89 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -937 87 -89 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -956 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -950 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -944 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -938 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -938 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -926 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -920 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -914 70 13 {Duration:100000000,Tags:["lobby_banner"]}
summon area_effect_cloud -932 70 13 {Duration:100000000,Tags:["lobby_banner"]}


#
execute as @e[tag=lobby_banner] at @s run function banners:reset

scoreboard objectives add banners dummy

scoreboard objectives add open_echest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add screen dummy
scoreboard objectives add chest_clear dummy
scoreboard objectives add compare dummy


scoreboard objectives add stats_games dummy
scoreboard objectives add stats_wins dummy
scoreboard objectives add stats_scenarios dummy
scoreboard objectives add stats_successes dummy
scoreboard objectives add stats_fails dummy
scoreboard objectives add stats_awards dummy

team add spectator
team modify spectator color aqua
team modify spectator prefix [{"text":"[","color":"gray","bold":true},{"text":"SPEC","bold":false,"color":"white"},{"text":"] ","color":"gray","bold":true}]



kill @e[type=area_effect_cloud,tag=spin]
summon area_effect_cloud 0 0 0 {Tags:["spin"],Duration:10000000}
scoreboard objectives add particle_pos dummy
kill @e[type=area_effect_cloud,tag=teleporter]
summon area_effect_cloud -932 80 -142 {Tags:["teleporter","tutorial_tp"],Duration:10000000}
summon area_effect_cloud -938 80 -142 {Tags:["teleporter","scenario_tp"],Duration:10000000}
scoreboard players add @e[type=area_effect_cloud,tag=teleporter] particle_pos 0

scoreboard objectives add resetting dummy




gamerule sendCommandFeedback false
gamerule reducedDebugInfo true


scoreboard objectives add spec_x dummy
scoreboard objectives add spec_y dummy
scoreboard objectives add spec_z dummy
scoreboard objectives add spec_rot dummy
scoreboard objectives add spec_rot_2 dummy

team add red
team modify red color red

scoreboard objectives add scenario_screen dummy
scoreboard players add $number scenario_screen 0
team add scenario_option

kill @e[type=area_effect_cloud,tag=scenario_option_display]
summon area_effect_cloud -929 62.75 -132 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Back","color":"blue","italic":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -928 62.75 -132 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Toggle","color":"aqua","italic":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -927 62.75 -132 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Next","color":"yellow","italic":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -930 62.75 -132 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"All ","color":"dark_red","italic":false},{"text":"OFF","bold":true}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -926 62.75 -132 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"All ","color":"dark_green","italic":false},{"text":"ON","bold":true}]',Tags:["scenario_option_display"]}

summon area_effect_cloud -920 65 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Neutral ","color":"gray","italic":false,"bold":true},{"text":"Gameplay","color":"aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -920 64.5 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Neutral gameplay is in","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -920 64.0 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"scenarios where players don\'t affect","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -920 63.5 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"eachother during the gameplay.","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}

summon area_effect_cloud -920 65 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Competitive ","color":"red","italic":false,"bold":true},{"text":"Gameplay","color":"aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -920 64.5 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Competitive gameplay is in","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -920 64.0 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"scenarios where players can interfere","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -920 63.5 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"with each other during the gameplay.","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}

summon area_effect_cloud -950 65 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Coordinated ","color":"light_purple","italic":false,"bold":true},{"text":"Gameplay","color":"aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 64.5 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Coordinated gameplay is in","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 64.0 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"scenarios where players generally","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 63.5 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"want to work together, but a player","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 63.0 -124 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"can still individually fail.","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}

summon area_effect_cloud -950 65 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Cooperative ","color":"green","italic":false,"bold":true},{"text":"Gameplay","color":"aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 64.5 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"Cooperative gameplay is in","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 64.0 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"scenarios where players","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 63.5 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"work together and can only","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
summon area_effect_cloud -950 63.0 -130 {Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"succeed or fail as a group.","color":"dark_aqua","bold":false}]',Tags:["scenario_option_display"]}
##

scoreboard players set $-1 number -1

scoreboard objectives add credits dummy




bossbar remove lobby
bossbar add lobby [{"text":" | ","color":"white","obfuscated":true,"bold":false},{"text":"Would","color":"blue","bold":true,"obfuscated":false},{"text":" You","color":"aqua","bold":true,"obfuscated":false},{"text":" Rather","color":"yellow","bold":true,"obfuscated":false},{"text":" - ","color":"gray","bold":false,"obfuscated":false},{"text":"By the ","color":"white","obfuscated":false,"underlined":false,"extra":[{"text":"Command","color":"aqua","bold":true,"obfuscated":false,"extra":[{"text":" Realm","color":"dark_aqua","extra":[{"text":" Team","bold":false,"color":"white"}]}]}]},{"text":" | ","color":"white","obfuscated":true,"bold":false}]
bossbar set lobby color blue
bossbar set lobby players @a[tag=!playing,tag=!playing_soon]
bossbar set lobby max 1
bossbar set lobby value 1
