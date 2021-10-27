
function scenario:feed_a_giant/teleport
schedule function scenario:check_countdown 40t
tag @a[team=giant] remove in_tutorial
scoreboard players reset @a[team=giant] tutorial
##Goal text here
tellraw @a[team=giant,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Complete parkour courses to obtain all three pieces of food. Bring them to the giant.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]