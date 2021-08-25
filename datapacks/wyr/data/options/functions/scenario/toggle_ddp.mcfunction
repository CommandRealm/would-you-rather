execute unless entity @e[type=area_effect_cloud,tag=scenario,name="Drink dangerous potions"] run tag @s[tag=!no_toggle_scenario] add toggle_scenario
kill @e[type=area_effect_cloud,tag=scenario,name="Drink dangerous potions"]
execute if entity @s[tag=toggle_scenario] run summon area_effect_cloud 0 100 0 {Duration:1000000000,Tags:["infinite","scenario"],CustomName:"\"Drink dangerous potions\""}



tag @s remove toggle_scenario