
function scenario:go_fishing/teleport
schedule function scenario:check_countdown 40t
tag @a[team=gf] remove in_tutorial
scoreboard players reset @a[team=gf] tutorial
##Goal text here
tellraw @a[team=gf,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Fish until you reach the score goal.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]