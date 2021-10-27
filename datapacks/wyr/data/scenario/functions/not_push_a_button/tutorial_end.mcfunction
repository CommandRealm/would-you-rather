

tag @a[team=npab] remove in_tutorial
scoreboard players reset @a[team=npab] tutorial
function scenario:not_push_a_button/teleport
schedule function scenario:check_countdown 40t
##Goal text here
tellraw @a[team=npab,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Don’t press the button.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]