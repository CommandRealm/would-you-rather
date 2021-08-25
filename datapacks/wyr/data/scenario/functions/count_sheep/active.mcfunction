#timer is in a different function and only goes down when it is run:

scoreboard players add $look_up cs_timer 1
execute if score $look_up cs_timer matches 5..40 run function scenario:count_sheep/look_up_message

##Time based commands

execute if score $launch cs_sheep matches 0.. run scoreboard players add $launch cs_sheep 1
execute if score $launch cs_sheep matches 40 if score $sheep_shown cs_sheep matches -1 run function scenario:count_sheep/delayed_start
execute if score $launch cs_sheep matches 1 run function scenario:count_sheep/pre_launch
execute if score $launch cs_sheep matches 50 run function scenario:count_sheep/determine_action


execute if score $launch cs_sheep matches 100 run function scenario:count_sheep/sheep_over
execute if score $launch cs_sheep matches -1 run function scenario:count_sheep/guessing_phase

#activity:
execute if score $cs active_scenario matches 1 if score $time cs_timer matches 1.. run schedule function scenario:count_sheep/active 1t
execute if score $cs active_scenario matches 1 unless entity @a[team=cs] run function scenario:count_sheep/end


execute as @e[tag=cs_die] at @s at @s[y=56,distance=..10] run function scenario:count_sheep/kill_entity


execute as @a[tag=playing,gamemode=adventure,team=cs,tag=!cs_locked_in] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:lime_bed"}]}] run function scenario:count_sheep/get_count_item
execute as @a[tag=playing,gamemode=adventure,team=cs,tag=!cs_locked_in] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:red_bed"}]}] run function scenario:count_sheep/get_subtract_item
execute as @a[tag=playing,gamemode=adventure,team=cs,scores={cs_drop_counter=1..},tag=!cs_locked_in] at @s run function scenario:count_sheep/count
execute as @a[tag=playing,gamemode=adventure,team=cs,scores={cs_drop_subtract=1..},tag=!cs_locked_in] at @s run function scenario:count_sheep/subtract
execute as @a[tag=playing,team=cs,gamemode=adventure] at @s run title @s actionbar [{"text":"Sheep you've counted: ","color":"white"},{"text":"[","color":"gray","bold":true},{"score":{"objective":"cs_sheep","name":"@s"},"color":"white","bold":false},{"text":"]","color":"gray","bold":true}]
kill @e[type=item,x=36000,y=66,z=0,distance=..500]