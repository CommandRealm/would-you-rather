kill @e[type=falling_block,x=18000,y=66,z=0,distance=..200]
scoreboard players set $time wiaff_timer -100
scoreboard players set $wiaaf active_scenario 0
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
schedule function scenario:check_active_scenarios 40t
fill 18008 65 -8 17992 70 8 air