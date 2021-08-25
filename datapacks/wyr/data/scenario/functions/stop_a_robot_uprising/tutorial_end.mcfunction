
function scenario:stop_a_robot_uprising/teleport
schedule function scenario:check_countdown 40t
tag @a[team=saru] remove in_tutorial
scoreboard players reset @a[team=saru] tutorial
kill @e[type=zombie,tag=saru_die]
kill @e[type=skeleton,tag=saru_die]
##Goal text here
tellraw @a[team=saru,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Kill the three glowing robots.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]