execute if score $action pgs_timer matches 0 as @a[tag=playing,team=pgs,scores={pgs_jump=1..},tag=!pgs_completed_action,gamemode=adventure] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 1 as @a[tag=playing,tag=!pgs_completed_action,x=27030,y=66,z=-13,dx=1,dy=2,dz=5,gamemode=adventure,team=pgs] at @s at @s[y=68,dy=0,nbt={OnGround:1b}] unless entity @s[x=27031,y=68.45,z=-11.0,dy=1,dx=1,dz=2] run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 2 as @a[tag=playing,tag=!pgs_completed_action,x=27016,y=66,z=-19,dx=7,dy=5,dz=5,gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 3 as @a[tag=playing,tag=!pgs_completed_action,x=27016,y=73,z=-19,dx=7,dy=5,dz=5,gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 4 as @a[tag=playing,tag=!pgs_completed_action,x=27039,y=66,z=-19,dx=3,dy=5,dz=5,gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 5 as @a[tag=playing,tag=!pgs_completed_action,x=27031,y=66,z=-26,dx=4,dy=5,dz=2,gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 6 as @a[tag=playing,tag=!pgs_completed_action,scores={pgs_run=20..},gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action

execute if score $action pgs_timer matches 7 as @a[tag=playing,tag=!pgs_completed_action,scores={pgs_crouch=1..},gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 8 if score $action_time pgs_timer matches 1 run function scenario:play_gene_says/detect_movement
execute if score $action pgs_timer matches 9 as @a[tag=playing,tag=!pgs_completed_action,gamemode=adventure,team=pgs] at @s anchored eyes positioned ^ ^ ^0.25 run function scenario:play_gene_says/raycast_artwork
execute if score $action pgs_timer matches 10 as @a[tag=playing,tag=!pgs_completed_action,gamemode=adventure,team=pgs] at @s if entity @e[tag=pgs_gene,type=armor_stand,distance=..1] run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 11 if score $action_time pgs_timer matches 1 run function scenario:play_gene_says/detect_jumps
execute if score $action pgs_timer matches 12 as @a[tag=playing,tag=!pgs_completed_action,gamemode=adventure,team=pgs] at @s if entity @e[type=item,tag=pgs_die_between_rounds,distance=..1] run function scenario:play_gene_says/pickup_sugar
execute if score $action pgs_timer matches 13 as @a[tag=playing,tag=!pgs_completed_action,x=27033,y=66,z=-4,dx=4,dy=5,dz=4,gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 14 as @a[tag=playing,tag=!pgs_completed_action,gamemode=adventure,team=pgs] at @s unless entity @s[x=27027,y=66,z=-20,dx=11,dz=14,dy=5] run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 15 if score $action_time pgs_timer matches 1 run function scenario:play_gene_says/detect_running

execute if score $action pgs_timer matches 16 as @a[tag=playing,team=pgs,tag=!pgs_completed_action,gamemode=adventure,x=27021.5,y=68,z=-17,dx=0.5,dy=3,dz=2,nbt={OnGround:1b}] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 17 as @a[tag=playing,team=pgs,tag=!pgs_completed_action,gamemode=adventure] at @s if entity @e[type=wolf,tag=pgs_wolf,distance=..1] run function scenario:play_gene_says/complete_action



execute if score $action pgs_timer matches 18 as @a[tag=playing,gamemode=adventure,team=pgs,tag=!pgs_completed_action,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 18 as @a[tag=playing,gamemode=adventure,team=pgs,tag=!pgs_completed_action] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:leather_chestplate",Count:1b}]}] run function scenario:play_gene_says/get_coat

execute if score $action pgs_timer matches 19 as @a[tag=playing,team=pgs,tag=!pgs_completed_action,scores={pgs_potato=1..},gamemode=adventure] at @s run function scenario:play_gene_says/complete_action
execute if score $action pgs_timer matches 19 as @a[tag=playing,gamemode=adventure,team=pgs,tag=!pgs_completed_action] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:poisonous_potato",Count:1b}]}] run function scenario:play_gene_says/get_potato



execute if score $action pgs_timer matches 12 as @a[tag=playing,gamemode=adventure,team=pgs,tag=pgs_has_sugar] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:sugar",Count:1b}]}] run function scenario:play_gene_says/get_sugar
##