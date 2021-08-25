setblock -938 79 -130 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number skip_coop 1
execute if score $number skip_coop matches ..-1 run scoreboard players set $number skip_coop 1
execute if score $number skip_coop matches 2.. run scoreboard players set $number skip_coop 0


execute if score $number skip_coop matches 0 run setblock -938 79 -130 oak_wall_sign[facing=north]{Text1:'{"text":"Skip pointless","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"scenarios:","color":"red","bold":true}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:co-op/click_co-op"}}'}
execute if score $number skip_coop matches 1 run setblock -938 79 -130 oak_wall_sign[facing=north]{Text1:'{"text":"Skip pointless","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"scenarios:","color":"red","bold":true}',Text3:'{"text":"On","color":"green"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:co-op/click_co-op"}}'}

particle minecraft:cloud -938 80.5 -129 0 0 0 0.05 10

kill @e[tag=display_co-op]
execute if score $number skip_coop matches 0 run summon armor_stand -938 78.725 -129 {DisabledSlots:2039583,Tags:["display_co-op","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}]}
execute if score $number skip_coop matches 1 run summon armor_stand -938 78.725 -129 {DisabledSlots:2039583,Tags:["display_co-op","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:bone_block",Count:1b}]}