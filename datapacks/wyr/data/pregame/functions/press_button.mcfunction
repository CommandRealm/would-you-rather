##Called when someone presses the start button.

##Resetting the button and trapdor

setblock -935 82 -142 air destroy
setblock -935 83 -141 minecraft:iron_trapdoor[facing=west,half=bottom,open=false,powered=false,waterlogged=false]
setblock -934 82 -141 minecraft:iron_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
setblock -935 81 -141 minecraft:iron_trapdoor[facing=east,half=top,open=false,powered=false,waterlogged=false]
setblock -936 82 -141 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]

execute if score $time startup_timer matches 0.. run tag @p add temporary_tag
execute if score $time startup_timer matches 0.. run function pregame:timer_end
execute if score $number rplayers matches 2.. unless score $time startup_timer matches 0.. unless entity @a[tag=temporary_tag] run function pregame:start_countdown
execute if score $number rplayers matches ..1 run function pregame:not_enough_players

tag @a remove temporary_tag

##Setting up button delay
scoreboard players set $button pregame 10