setblock -930 79 -131 air
playsound minecraft:ui.button.click master @s
scoreboard players add $round round_criteria 1
execute if score $round round_criteria matches ..0 run scoreboard players set $round round_criteria 10
execute if score $round round_criteria matches 11.. run scoreboard players set $round round_criteria 1


setblock -930 79 -131 oak_wall_sign[facing=north]{Text1:'{"text":"Number of","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"rounds:","color":"yellow","bold":true}',Text3:'{"score":{"objective":"round_criteria","name":"$round"},"color":"gold"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:round/click_round"}}'}
##execute if score $round round_criteria matches 1 run setblock -930 79 -131 oak_wall_sign[facing=north]{Text1:'{"text":"Number of","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"rounds:","color":"gold","bold":true}',Text3:'{"text":"On","color":"green"}',Text4:'{"text":"<<<         >>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:round/click_round"}}'}

particle minecraft:cloud -930 80.5 -130 0 0 0 0.05 10

kill @e[tag=display_round]
summon armor_stand -930 78.725 -130 {DisabledSlots:2039583,Tags:["display_round","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine",Count:1b}]}