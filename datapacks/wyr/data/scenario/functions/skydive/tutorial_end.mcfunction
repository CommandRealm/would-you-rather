
function scenario:skydive/teleport
schedule function scenario:check_countdown 40t
tag @a[team=skydive] remove in_tutorial
scoreboard players reset @a[team=skydive] tutorial
##Goal text here
tellraw @a[team=skydive,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Survive five random dropper levels in a row.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]