tp @e[tag=die,x=1000,y=66,z=0,distance=..400] 0 2 0
kill @e[tag=die,x=1000,y=66,z=0,distance=..400]
scoreboard players set $time bam_old_timer -1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
scoreboard players set $bam_old active_scenario 0
schedule function scenario:check_active_scenarios 40t
bossbar set become_a_miner_old:diamonds visible false