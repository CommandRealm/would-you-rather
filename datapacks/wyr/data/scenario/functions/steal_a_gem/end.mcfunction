tp @e[tag=die,x=1000,y=66,z=0,distance=..400] 0 2 0
kill @e[tag=die,x=1000,y=66,z=0,distance=..400]
scoreboard players set $time rab_timer -1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Steal a gem",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
scoreboard players set $rab active_scenario 0
schedule function scenario:check_active_scenarios 40t
bossbar set steal_a_gem:suspicion players @a[tag=playing,team=rab,gamemode=adventure]