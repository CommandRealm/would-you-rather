#timer:


##Startup stuff will be done between 0 and 20, anything after that will be run every time gene gives a direction.



scoreboard players add $time pgs_timer 1

execute if score $time pgs_timer matches 1 run scoreboard players set $says pgs_timer 2



execute if score $time pgs_timer matches 21 run function scenario:play_gene_says/determine_result
execute if score $time pgs_timer matches 30 run function scenario:play_gene_says/announce_round

##Succeed/Fail functions
execute if score $time pgs_timer matches 40 as @a[tag=playing,gamemode=adventure,team=pgs,tag=pgs_failed] at @s run function scenario:play_gene_says/fail
execute if score $time pgs_timer matches 40 if score $round pgs_timer matches 11 as @a[tag=playing,gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/success




##Orders
execute if score $time pgs_timer matches 80..107 if score $says pgs_timer matches 1 run function scenario:play_gene_says/show_gene_says
execute if score $time pgs_timer matches 80 run playsound minecraft:block.note_block.hat master @a[tag=playing,team=pgs] 27000 66 0 100000 1 
execute if score $time pgs_timer matches 101 run playsound minecraft:block.note_block.hat master @a[tag=playing,team=pgs] 27000 66 0 100000 1 
execute if score $time pgs_timer matches 130 run function scenario:play_gene_says/generate_action

execute if score $action_time pgs_timer matches 1.. run function scenario:play_gene_says/active_action



#activity:
execute if score $pgs active_scenario matches 1 if score $time pgs_timer matches 1.. run schedule function scenario:play_gene_says/active 1t
execute if score $pgs active_scenario matches 1 unless entity @a[team=pgs] run function scenario:play_gene_says/end

execute as @e[type=armor_stand,tag=pgs_gene] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,gamemode=adventure,team=pgs]