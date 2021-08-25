
function scenario:outrun_lava/teleport
schedule function scenario:check_countdown 40t
schedule function scenario:outrun_lava/delayed_teleport 80t
tag @a[team=ol] remove in_tutorial
scoreboard players reset @a[team=ol] tutorial
##Goal text here
tellraw @a[team=ol,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Reach the bunker at the end of the valley before getting caught by lava.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]