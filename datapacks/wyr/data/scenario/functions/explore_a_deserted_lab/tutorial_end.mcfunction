
function scenario:explore_a_deserted_lab/teleport
schedule function scenario:check_countdown 40t
tag @a[team=eadl] remove in_tutorial
scoreboard players reset @a[team=eadl] tutorial
##Goal text here
tellraw @a[team=eadl,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Find and retrieve the three components inside the lab and then return to your ship.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]