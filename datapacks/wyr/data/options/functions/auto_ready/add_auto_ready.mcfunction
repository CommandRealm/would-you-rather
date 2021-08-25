setblock -940 79 -131 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number auto_ready 1
execute if score $number auto_ready matches ..-1 run scoreboard players set $number auto_ready 1
execute if score $number auto_ready matches 2.. run scoreboard players set $number auto_ready 0


execute if score $number auto_ready matches 0 run setblock -940 79 -131 oak_wall_sign[facing=north]{Text1:'{"text":"Auto-ready","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"after games:","color":"dark_green","bold":true}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:auto_ready/click_auto_ready"}}'}
execute if score $number auto_ready matches 1 run setblock -940 79 -131 oak_wall_sign[facing=north]{Text1:'{"text":"Auto-ready","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"after games:","color":"dark_green","bold":true}',Text3:'{"text":"On","color":"dark_green"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:auto_ready/click_auto_ready"}}'}

particle minecraft:cloud -940 80.5 -130 0 0 0 0.05 10

kill @e[tag=display_auto_ready]
execute if score $number auto_ready matches 0 run summon armor_stand -940 78.725 -130 {DisabledSlots:2039583,Tags:["display_auto_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $number auto_ready matches 1 run summon armor_stand -940 78.725 -130 {DisabledSlots:2039583,Tags:["display_auto_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}