execute if score $time ol_timer matches 20.. if score $alternate ol_timer matches ..0 run function scenario:outrun_lava/alternate_over
execute if score $time ol_timer matches 20.. run scoreboard players remove $alternate ol_timer 1


execute unless score $check ol_timer = $lava ol_timer run function scenario:outrun_lava/update_lava_frame

#timer:
scoreboard players remove $time ol_timer 1
scoreboard players operation : ol_timer = $time ol_timer
scoreboard players operation : ol_timer /= $20 number
scoreboard players add : ol_timer 1
execute unless score : ol_timer = : ol_seconds run scoreboard players operation : ol_seconds = : ol_timer

execute if score $time ol_timer matches 150..170 run function scenario:outrun_lava/close_door

execute as @a[tag=playing,gamemode=adventure,team=ol,scores={death=1..}] at @s run function scenario:outrun_lava/fail
execute as @a[tag=playing,gamemode=adventure,team=ol] at @s if entity @s[z=-161,dz=10] run function scenario:outrun_lava/success
execute if score $time ol_timer matches 0 run function scenario:outrun_lava/timer_over


execute as @a[tag=playing,gamemode=adventure,team=ol] at @s if entity @s[y=83,dy=5] run title @s title [{"text":" "}]
execute as @a[tag=playing,gamemode=adventure,team=ol] at @s if entity @s[y=83,dy=5] run title @s subtitle [{"text":"You're going too high! Get to a lower area.","color":"red"}]
execute as @a[tag=playing,gamemode=adventure,team=ol] at @s if entity @s[y=85,dy=5] run kill @s

#activity:
execute if score $time ol_timer matches 1.. if score $ol active_scenario matches 1 run schedule function scenario:outrun_lava/active 1t
execute if score $ol active_scenario matches 1 unless entity @a[team=ol] run function scenario:outrun_lava/end