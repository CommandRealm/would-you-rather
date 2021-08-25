execute as @a[tag=playing,scores={scenario_sel=1}] at @s store result score @s awd_d_companions if entity @a[tag=playing,scores={scenario_sel=1}]
execute as @a[tag=playing,scores={scenario_sel=2}] at @s store result score @s awd_d_companions if entity @a[tag=playing,scores={scenario_sel=2}]
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_companions += @s awd_d_companions


execute as @a[tag=playing,scores={scenario_sel=1}] at @s store result score @s store_players if entity @a[tag=playing,scores={scenario_sel=1}]
execute as @a[tag=playing,scores={scenario_sel=2}] at @s store result score @s store_players if entity @a[tag=playing,scores={scenario_sel=2}]
scoreboard players set @a[tag=playing] points_for_win 1
execute as @a[tag=playing,scores={scenario_sel=1}] run scoreboard players add @a[tag=playing,scores={scenario_sel=2}] points_for_win 1
execute as @a[tag=playing,scores={scenario_sel=2}] run scoreboard players add @a[tag=playing,scores={scenario_sel=1}] points_for_win 1
team join blue @a[tag=playing,scores={scenario_sel=1}]
team join yellow @a[tag=playing,scores={scenario_sel=2}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
execute if entity @a[tag=playing,scores={scenario_sel=1}] run tellraw @a[tag=playing] [{"text":"\n| ","color":"aqua"},{"selector":"@e[type=area_effect_cloud,tag=chosen,tag=blue_select]"},{"text":" | ","color":"aqua"},{"text":" \nPlayers attempting: ","color":"aqua"},{"selector":"@a[scores={scenario_sel=1},tag=playing]"},{"text":"\nPotential point gain: ","color":"aqua"},{"text":"+","color":"green"},{"score":{"objective":"points_for_win","name":"@r[scores={scenario_sel=1},tag=playing]"},"color":"green"}]
execute if entity @a[tag=playing,scores={scenario_sel=1}] if entity @a[tag=playing,scores={scenario_sel=2}] run tellraw @a[tag=playing] {"text":" "}
execute if entity @a[tag=playing,scores={scenario_sel=2}] run tellraw @a[tag=playing] [{"text":"\n| ","color":"#fff8aa"},{"selector":"@e[type=area_effect_cloud,tag=chosen,tag=yellow_select]"},{"text":" | ","color":"#fff8aa"},{"text":" \nPlayers attempting: ","color":"#fff8aa"},{"selector":"@a[scores={scenario_sel=2},tag=playing]"},{"text":"\nPotential point gain: ","color":"#fff8aa"},{"text":"+","color":"green"},{"score":{"objective":"points_for_win","name":"@r[scores={scenario_sel=2},tag=playing]"},"color":"green"}]
team join wyr @a[tag=playing]
execute if score $number skip_coop matches 1 if entity @e[type=area_effect_cloud,tag=pointless_scenario,tag=chosen] unless entity @e[type=area_effect_cloud,tag=!pointless_scenario,tag=chosen] run scoreboard players set $time showstart 8000
