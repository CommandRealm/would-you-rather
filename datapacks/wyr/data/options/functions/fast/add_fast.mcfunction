setblock -936 79 -129 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number fast_mode 1
execute if score $number fast_mode matches ..-1 run scoreboard players set $number fast_mode 1
execute if score $number fast_mode matches 2.. run scoreboard players set $number fast_mode 0


execute if score $number fast_mode matches 1 run setblock -936 79 -129 oak_wall_sign[facing=north]{Text1:'{"text":"Intro","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"show:","color":"yellow","bold":true}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:fast/click_fast"}}'}
execute if score $number fast_mode matches 0 run setblock -936 79 -129 oak_wall_sign[facing=north]{Text1:'{"text":"Intro","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"show:","color":"yellow","bold":true}',Text3:'{"text":"On","color":"green"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:fast/click_fast"}}'}

particle minecraft:cloud -936 80.5 -128 0 0 0 0.05 10

kill @e[tag=display_fast]
execute if score $number fast_mode matches 1 run summon armor_stand -936 78.725 -128 {DisabledSlots:2039583,Tags:["display_fast","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}
execute if score $number fast_mode matches 0 run summon armor_stand -936 78.725 -128 {DisabledSlots:2039583,Tags:["display_fast","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_wool",Count:1b}]}