
function scenario:walk_a_tightrope/teleport
schedule function scenario:check_countdown 40t
tag @a[team=wat] remove in_tutorial
scoreboard players reset @a[team=wat] tutorial
##Goal text here
tellraw @a[team=wat,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the end of the parkour course.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]