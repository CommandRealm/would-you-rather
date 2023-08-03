setblock -940 79 -131 air
playsound minecraft:ui.button.click master @s
scoreboard players add $punch settings 1
execute if score $punch settings matches ..-1 run scoreboard players set $punch settings 1
execute if score $punch settings matches 2.. run scoreboard players set $punch settings 0


execute if score $punch settings matches 0 run setblock -940 79 -131 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Punching in","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"studio","color":"dark_green","bold":true}', '{"text":"Off","color":"red"}', '{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:punch/click_punch"}}'], has_glowing_text: false, color: "black"}}
execute if score $punch settings matches 1 run setblock -940 79 -131 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Punching in","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"studio","color":"dark_green","bold":true}', '{"text":"On","color":"dark_green"}', '{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:punch/click_punch"}}'], has_glowing_text: false, color: "black"}}

particle minecraft:cloud -940 80.5 -130 0 0 0 0.05 10

kill @e[tag=display_auto_ready]
execute if score $punch settings matches 0 run summon armor_stand -940 78.725 -130 {DisabledSlots:2039583,Tags:["display_auto_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $punch settings matches 1 run summon armor_stand -940 78.725 -130 {DisabledSlots:2039583,Tags:["display_auto_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}

# changing team settings
execute if score $punch settings matches 0 run team modify wyr friendlyFire false
execute if score $punch settings matches 1 run team modify wyr friendlyFire true