
function scenario:defuse_tnt/teleport
schedule function scenario:check_countdown 40t
tag @a[team=dab] remove in_tutorial
scoreboard players reset @a[team=dab] tutorial
##Goal text here
fill 25990 77 4 25990 77 6 air
tellraw @a[team=dab,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Guess the predetermined three-color code before using all seven guesses, or time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]