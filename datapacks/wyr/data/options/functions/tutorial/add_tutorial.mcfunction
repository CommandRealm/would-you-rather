setblock -932 79 -130 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number tutorial 1
execute if score $number tutorial matches ..-1 run scoreboard players set $number tutorial 1
execute if score $number tutorial matches 2.. run scoreboard players set $number tutorial 0


execute if score $number tutorial matches 0 run setblock -932 79 -130 oak_wall_sign[facing=north]{Text1:'{"text":"Scenario","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"tutorials:","color":"light_purple","bold":true}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:tutorial/click_tutorial"}}'}
execute if score $number tutorial matches 1 run setblock -932 79 -130 oak_wall_sign[facing=north]{Text1:'{"text":"Scenario","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"tutorials:","color":"light_purple","bold":true}',Text3:'{"text":"On","color":"green"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:tutorial/click_tutorial"}}'}

particle minecraft:cloud -932 80.5 -129 0 0 0 0.05 10

kill @e[tag=display_tutorial]
execute if score $number tutorial matches 0 run summon armor_stand -932 78.725 -129 {DisabledSlots:2039583,Tags:["display_tutorial","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:terracotta",Count:1b}]}
execute if score $number tutorial matches 1 run summon armor_stand -932 78.725 -129 {DisabledSlots:2039583,Tags:["display_tutorial","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b}]}