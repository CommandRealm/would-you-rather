setblock -934 79 -129 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number awards 1
execute if score $number awards matches ..-1 run scoreboard players set $number awards 1
execute if score $number awards matches 2.. run scoreboard players set $number awards 0


execute if score $number awards matches 0 run setblock -934 79 -129 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Awards","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"show:","color":"dark_aqua","bold":true}', '{"text":"Off","color":"red"}', '{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:awards/click_awards"}}'], has_glowing_text: false, color: "black"}}
execute if score $number awards matches 1 run setblock -934 79 -129 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Awards","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"show:","color":"dark_aqua","bold":true}', '{"text":"On","color":"green"}', '{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:awards/click_awards"}}'], has_glowing_text: false, color: "black"}}

particle minecraft:cloud -934 80.5 -128 0 0 0 0.05 10

kill @e[tag=display_awards]
execute if score $number awards matches 0 run summon armor_stand -934 78.725 -128 {DisabledSlots:2039583,Tags:["display_awards","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute if score $number awards matches 1 run summon armor_stand -934 78.725 -128 {DisabledSlots:2039583,Tags:["display_awards","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}]}