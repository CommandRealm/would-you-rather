scoreboard objectives remove awd_d_run
scoreboard objectives remove awd_d_jump
scoreboard objectives remove awd_d_drop
scoreboard objectives remove awd_d_sneak
scoreboard objectives remove awd_d_taken
scoreboard objectives remove awd_d_dealt
scoreboard objectives remove awd_d_mob_kills
scoreboard objectives remove awd_d_walk
scoreboard objectives remove awd_d_s_dist
scoreboard objectives remove awd_d_companions


scoreboard objectives remove awd_sel_time
scoreboard objectives remove awd_run
scoreboard objectives remove awd_fail
scoreboard objectives remove awd_companions
scoreboard objectives remove awd_jump
scoreboard objectives remove awd_spectate
scoreboard objectives remove awd_drop
scoreboard objectives remove awd_sneak
scoreboard objectives remove awd_taken
scoreboard objectives remove awd_dealt
scoreboard objectives remove awd_in_scenario
scoreboard objectives remove awd_mob_kills
scoreboard objectives remove awd_walk
scoreboard objectives remove awd_movement
scoreboard objectives remove awd_hold_item
scoreboard objectives remove awd_random
scoreboard objectives remove awd_r_sel_time

scoreboard objectives remove awd_water
scoreboard objectives remove awd_fire
scoreboard objectives remove awd_thievery
scoreboard objectives remove awd_armor

scoreboard objectives remove awd_d_open_chest
scoreboard objectives remove awd_d_open_shulk
scoreboard objectives remove awd_d_open_barr


scoreboard objectives add awd_sel_time dummy
scoreboard objectives add awd_r_sel_time dummy
scoreboard objectives add awd_run dummy
scoreboard objectives add awd_fail dummy
scoreboard objectives add awd_companions dummy
scoreboard objectives add awd_jump dummy
scoreboard objectives add awd_spectate dummy
scoreboard objectives add awd_drop dummy
scoreboard objectives add awd_sneak dummy
scoreboard objectives add awd_taken dummy
scoreboard objectives add awd_dealt dummy
scoreboard objectives add awd_in_scenario dummy
scoreboard objectives add awd_mob_kills dummy
scoreboard objectives add awd_walk dummy
scoreboard objectives add awd_movement dummy
scoreboard objectives add awd_hold_item dummy
scoreboard objectives add awd_random dummy

scoreboard objectives add awd_water dummy
scoreboard objectives add awd_fire dummy
scoreboard objectives add awd_thievery dummy
scoreboard objectives add awd_armor dummy
kill @e[type=area_effect_cloud,tag=award]
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_sel_time","award_second"],CustomName:'[{"text":"Speedster","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_run","award_block"],CustomName:'[{"text":"Marathon","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_fail"],CustomName:'[{"text":"Unsuccessful","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_companions","award_round"],CustomName:'[{"text":"Popular","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_companions_2","award_round"],CustomName:'[{"text":"Loner","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_random"],CustomName:'[{"text":"Destiny","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_jump"],CustomName:'[{"text":"Jumper","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_gene"],CustomName:'[{"text":"Gene\'s Favorite","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_spectate","award_second"],CustomName:'[{"text":"Spectator","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_drop"],CustomName:'[{"text":"Careless","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_sneak","award_second"],CustomName:'[{"text":"Hunchback","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_taken"],CustomName:'[{"text":"Victim","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_dealt"],CustomName:'[{"text":"Hurtful","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_in_scenario","award_second"],CustomName:'[{"text":"Playful","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_mob_kills"],CustomName:'[{"text":"Hunter","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_walk","award_block"],CustomName:'[{"text":"Casual-Traveler","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_movement","award_block"],CustomName:'[{"text":"Rock","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_jump_2"],CustomName:'[{"text":"Sticky-Feet","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_drop_2"],CustomName:'[{"text":"Careful","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_sneak_2","award_second"],CustomName:'[{"text":"Posture","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_dealt_2"],CustomName:'[{"text":"Pacifist","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_taken_2"],CustomName:'[{"text":"Safety","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","award_least","awd_run_2","award_block"],CustomName:'[{"text":"Lazy","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_hold_item","award_second"],CustomName:'[{"text":"Firm-Grip","color":"dark_aqua","bold":true}]'}

# new 1.17 awards
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_water","award_second"],CustomName:'[{"text":"Fish","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_fire","award_second"],CustomName:'[{"text":"Flammable","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_thievery","award_second"],CustomName:'[{"text":"Thievery","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_lawful","award_second","awd_least"],CustomName:'[{"text":"Lawful Citizen","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_armor","award_second"],CustomName:'[{"text":"Fashionista","color":"dark_aqua","bold":true}]'}
summon area_effect_cloud 0 66 0 {Duration:1000000,Tags:["award","awd_gene_l","award_second"],CustomName:'[{"text":"Gene\'s Least Favorite","color":"dark_aqua","bold":true}]'}


##the "limit" on this command should be amount of cloud summons total minus 3
kill @e[type=area_effect_cloud,tag=award,limit=27,sort=random]
