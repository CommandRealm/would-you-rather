scoreboard players remove $time gamt_timer 1
kill @e[type=item,nbt={Item:{tag:{die:1}}}]
execute if score $time gamt_timer matches 0..60 as @a[team=gamt] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:lime_wool"}]}] run function scenario:grade_a_math_test/get_wool
execute if score $time gamt_timer matches 0..60 as @a[team=gamt] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:red_wool"}]}] run function scenario:grade_a_math_test/get_wool
execute if score $time gamt_timer matches -1 run clear @a[team=gamt] red_wool
execute if score $time gamt_timer matches -1 run clear @a[team=gamt] lime_wool

scoreboard players set @a[team=gamt,tag=playing,scores={gamt_true=1..}] gamt_answer 0
tellraw @a[team=gamt,tag=playing,scores={gamt_true=1..}] {"text":"Your answer is: \"True\"","color":"dark_green"}
execute as @a[team=gamt,tag=playing,scores={gamt_true=1..}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 0.75
execute as @a[team=gamt,tag=playing,scores={gamt_true=1..}] at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1.25
scoreboard players set @a[team=gamt,tag=playing,scores={gamt_true=1..}] gamt_true 0
scoreboard players set @a[team=gamt,tag=playing,scores={gamt_untrue=1..}] gamt_answer 1
execute as @a[team=gamt,tag=playing,scores={gamt_untrue=1..}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 0.75
execute as @a[team=gamt,tag=playing,scores={gamt_untrue=1..}] at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1.25

tellraw @a[team=gamt,tag=playing,scores={gamt_untrue=1..}] {"text":"Your answer is: \"False\"","color":"dark_red"}
scoreboard players set @a[team=gamt,tag=playing,scores={gamt_untrue=1..}] gamt_untrue 0



execute if score $time gamt_timer matches 61 run title @a[tag=playing,team=gamt] times 5 55 0
execute if score $time gamt_timer matches 61 run scoreboard players set @a[team=gamt,tag=playing] gamt_answer -1

execute if score $time gamt_timer matches 80 as @r at @s run function scenario:grade_a_math_test/random
execute if score $time gamt_timer matches 80 run scoreboard players add $rand gamt_random 1
execute if score $time gamt_timer matches 80 run scoreboard players operation $1 gamt_number_1 = $rand gamt_random
execute if score $time gamt_timer matches 79 run function scenario:grade_a_math_test/random
execute if score $time gamt_timer matches 79 run scoreboard players operation $2 gamt_number_2 = $rand gamt_random
execute if score $time gamt_timer matches 79 run scoreboard players add $rand gamt_random 1
execute if score $time gamt_timer matches 78 run scoreboard players set $mod gamt_random 3
execute if score $time gamt_timer matches 78 as @r at @s run function scenario:grade_a_math_test/random
execute if score $time gamt_timer matches 78 run scoreboard players operation $operation gamt_operation = $rand gamt_random
execute if score $time gamt_timer matches 78 run scoreboard players set $mod gamt_random 16


##Following code is to keep numbers on multiplication below 10
execute if score $operation gamt_operation matches 2 if score $time gamt_timer matches 77 if score $1 gamt_number_1 matches 13.. run scoreboard players remove $1 gamt_number_1 4
execute if score $operation gamt_operation matches 2 if score $time gamt_timer matches 77 if score $2 gamt_number_2 matches 13.. run scoreboard players remove $2 gamt_number_2 4

execute if score $time gamt_timer matches 77 run scoreboard players operation $result gamt_add = $1 gamt_number_1
execute if score $operation gamt_operation matches 0 if score $time gamt_timer matches 77 run scoreboard players operation $result gamt_add += $2 gamt_number_2
execute if score $operation gamt_operation matches 1 if score $time gamt_timer matches 77 run scoreboard players operation $result gamt_add -= $2 gamt_number_2


execute if score $operation gamt_operation matches 2 if score $time gamt_timer matches 77 run scoreboard players operation $result gamt_add *= $2 gamt_number_2


execute if score $time gamt_timer matches 76 run scoreboard players set $mod gamt_random 2
execute if score $time gamt_timer matches 76 as @r at @s run function scenario:grade_a_math_test/random
execute if score $time gamt_timer matches 76 run scoreboard players operation $number gamt_false = $rand gamt_random

execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 run scoreboard players set $mod gamt_random 10
execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 as @r at @s run function scenario:grade_a_math_test/random
execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 run scoreboard players add $rand gamt_random 1
execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 run scoreboard players operation $number gamt_remove = $rand gamt_random

execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 run scoreboard players set $mod gamt_random 2
execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 as @r at @s run function scenario:grade_a_math_test/random
execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 run scoreboard players operation $number gamt_change = $rand gamt_random

execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 if score $rand gamt_random matches 0 run scoreboard players operation $result gamt_add += $number gamt_remove
execute if score $time gamt_timer matches 76 if score $number gamt_false matches 1 if score $rand gamt_random matches 1 run scoreboard players operation $result gamt_add -= $number gamt_remove

execute if score $time gamt_timer matches 74 run scoreboard players set $mod gamt_random 16


execute if score $time gamt_timer matches 60 run title @a[tag=playing,team=gamt] title [{"text":"True ","color":"green"},{"text":"or","color":"light_purple"},{"text":" False","color":"red"}]

execute if score $operation gamt_operation matches 0 if score $time gamt_timer matches 60 run title @a[tag=playing,team=gamt] subtitle [{"score":{"objective":"gamt_number_1","name":"$1"},"underlined":true},{"text":" + "},{"score":{"objective":"gamt_number_2","name":"$2"}},{"text":" = "},{"score":{"objective":"gamt_add","name":"$result"}}]
execute if score $operation gamt_operation matches 1 if score $time gamt_timer matches 60 run title @a[tag=playing,team=gamt] subtitle [{"score":{"objective":"gamt_number_1","name":"$1"},"underlined":true},{"text":" - "},{"score":{"objective":"gamt_number_2","name":"$2"}},{"text":" = "},{"score":{"objective":"gamt_add","name":"$result"}}]
execute if score $operation gamt_operation matches 2 if score $time gamt_timer matches 60 run title @a[tag=playing,team=gamt] subtitle [{"score":{"objective":"gamt_number_1","name":"$1"},"underlined":true},{"text":" x "},{"score":{"objective":"gamt_number_2","name":"$2"}},{"text":" = "},{"score":{"objective":"gamt_add","name":"$result"}}]
execute if score $time gamt_timer matches 0 as @a[tag=playing,team=gamt] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.9
execute if score $time gamt_timer matches 0 as @a[tag=playing,team=gamt] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9

execute if score $time gamt_timer matches 20 as @a[tag=playing,team=gamt] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.9

execute if score $time gamt_timer matches 40 as @a[tag=playing,team=gamt] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.9
execute if score $time gamt_timer matches 60 as @a[tag=playing,team=gamt] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.9

execute if score $time gamt_timer matches -19 run title @a[tag=playing,team=gamt] times 5 40 5
execute if score $time gamt_timer matches -20 if score $number gamt_false matches 0 run title @a[team=gamt,scores={gamt_answer=0},gamemode=adventure] title {"text":"True!","color":"dark_green","underlined":true}
execute if score $time gamt_timer matches -20 if score $number gamt_false matches 1 run title @a[team=gamt,scores={gamt_answer=1},gamemode=adventure] title {"text":"False!","color":"dark_green","underlined":true}

execute if score $time gamt_timer matches -20 if score $number gamt_false matches 0 run title @a[team=gamt,scores={gamt_answer=1},gamemode=adventure] title {"text":"True!","color":"dark_red","underlined":true}
execute if score $time gamt_timer matches -20 if score $number gamt_false matches 1 run title @a[team=gamt,scores={gamt_answer=0},gamemode=adventure] title {"text":"False!","color":"dark_red","underlined":true}

execute if score $time gamt_timer matches 0 run title @a[tag=playing,team=gamt] subtitle {"text":" "}

execute if score $time gamt_timer matches -25 as @a[team=gamt,scores={gamt_answer=-1},gamemode=adventure] at @s run function scenario:grade_a_math_test/check_item_slot
execute if score $time gamt_timer matches -25 as @a[team=gamt,scores={gamt_answer=-1},gamemode=adventure] at @s run function scenario:grade_a_math_test/no_answer
execute if score $time gamt_timer matches -25 if score $number gamt_false matches 0 as @a[team=gamt,scores={gamt_answer=0},gamemode=adventure] at @s run function scenario:grade_a_math_test/correct
execute if score $time gamt_timer matches -25 if score $number gamt_false matches 0 as @a[team=gamt,scores={gamt_answer=1},gamemode=adventure] at @s run function scenario:grade_a_math_test/incorrect
execute if score $time gamt_timer matches -25 if score $number gamt_false matches 1 as @a[team=gamt,scores={gamt_answer=1},gamemode=adventure] at @s run function scenario:grade_a_math_test/correct
execute if score $time gamt_timer matches -25 if score $number gamt_false matches 1 as @a[team=gamt,scores={gamt_answer=0},gamemode=adventure] at @s run function scenario:grade_a_math_test/incorrect

execute if score $time gamt_timer matches -40 run scoreboard players set $time gamt_timer 120



effect give @a[team=gamt] weakness 1 255 true



execute as @a[gamemode=adventure,tag=playing,team=gamt,scores={gamt_tally_c=10..}] at @s run function scenario:grade_a_math_test/success
execute as @a[gamemode=adventure,tag=playing,team=gamt,scores={gamt_tally_i=2..}] at @s run function scenario:grade_a_math_test/fail



execute as @a[tag=playing,team=gamt,gamemode=adventure] at @s run title @s actionbar [{"text":"Correct: ","color":"green","bold":false},{"text":"[","color":"dark_green","bold":true},{"score":{"objective":"gamt_tally_c","name":"@s"},"color":"green","bold":false},{"text":"/10","color":"green","bold":false},{"text":"]","color":"dark_green","bold":true},{"text":"  |  ","color":"light_purple","bold":true},{"text":"Incorrect: ","color":"red","bold":false},{"text":"[","color":"dark_red","bold":true},{"score":{"objective":"gamt_tally_i","name":"@s"},"color":"red","bold":false},{"text":"/2","color":"red","bold":false},{"text":"]","color":"dark_red","bold":true}]




execute if score $gamt active_scenario matches 1 if score $time gamt_timer matches -40.. run schedule function scenario:grade_a_math_test/active 1t
execute if score $gamt active_scenario matches 1 unless entity @a[team=gamt] run function scenario:grade_a_math_test/end


