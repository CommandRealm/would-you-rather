execute unless entity @e[type=area_effect_cloud,tag=scenario,name="Steal a gem [CLASSIC]"] run tag @s[tag=!no_toggle_scenario] add toggle_scenario
kill @e[type=area_effect_cloud,tag=scenario,name="Steal a gem [CLASSIC]"]
execute if entity @s[tag=toggle_scenario] run summon area_effect_cloud 0 100 0 {Duration:1000000000,Tags:["infinite","scenario"],CustomName:"\"Steal a gem [CLASSIC]\""}



tag @s remove toggle_scenario