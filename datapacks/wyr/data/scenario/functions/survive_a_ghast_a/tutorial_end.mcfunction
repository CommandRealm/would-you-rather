
function scenario:survive_a_ghast_a/teleport
schedule function scenario:check_countdown 40t
tag @a[team=saga] remove in_tutorial
scoreboard players reset @a[team=saga] tutorial
##Goal text here
tellraw @a[team=saga,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Evade fire and fireballs from ghasts until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]