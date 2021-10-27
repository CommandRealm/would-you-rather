scoreboard players reset @s awd_r_sel_time
scoreboard players operation $time awd_r_sel_time = $time showstart
scoreboard players remove $time awd_r_sel_time 1000
scoreboard players operation @s awd_r_sel_time += $time awd_r_sel_time