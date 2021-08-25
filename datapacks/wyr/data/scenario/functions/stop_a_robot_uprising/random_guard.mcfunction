scoreboard players set $mod random 12
function random:random
#basic
execute if score $rand random matches 0..5 run function scenario:stop_a_robot_uprising/create_basic
#archer
execute if score $rand random matches 6..7 run function scenario:stop_a_robot_uprising/create_archer
#tank
execute if score $rand random matches 8..9 run function scenario:stop_a_robot_uprising/create_tank
#bomber
execute if score $rand random matches 10..11 run function scenario:stop_a_robot_uprising/create_tnt

particle cloud ~ ~ ~ 0.05 0.5 0.05 0.05 25
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 0