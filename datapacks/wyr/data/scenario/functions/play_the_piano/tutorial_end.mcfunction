
function scenario:play_the_piano/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ptp] remove in_tutorial
scoreboard players reset @a[team=ptp] tutorial
##Goal text here
tellraw @a[team=ptp,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Repeat the notes played for you on the piano.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]