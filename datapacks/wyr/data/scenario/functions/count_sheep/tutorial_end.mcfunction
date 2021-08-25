
function scenario:count_sheep/teleport
schedule function scenario:check_countdown 40t
tag @a[team=cs] remove in_tutorial
scoreboard players reset @a[team=cs] tutorial
##Goal text here
tellraw @a[team=cs,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Count sheep that are flying overhead by dropping the bed items. Make sure not to count wool blocks.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]