execute unless entity @e[type=area_effect_cloud,tag=scenario,name="Work in an anvil factory"] run tag @s[tag=!no_toggle_scenario] add toggle_scenario
kill @e[type=area_effect_cloud,tag=scenario,name="Work in an anvil factory"]
execute if entity @s[tag=toggle_scenario] run summon area_effect_cloud 0 100 0 {Duration:1000000000,Tags:["infinite","scenario"],CustomName:"\"Work in an anvil factory\""}



tag @s remove toggle_scenario