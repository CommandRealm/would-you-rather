
function scenario:become_a_fan/teleport
schedule function scenario:check_countdown 40t
tag @a[team=bafe] remove in_tutorial
scoreboard players reset @a[team=bafe] tutorial

execute positioned 11992 74 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 85 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 96 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 107 -9 run function scenario:become_a_fan/random_piece


execute positioned 11992 118 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 129 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 140 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 151 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 162 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 173 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 184 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 195 -9 run function scenario:become_a_fan/random_piece

##Goal text here
tellraw @a[team=bafe,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the top of the shaft before levitation runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]