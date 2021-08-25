
function scenario:hunt_cave_monsters/teleport
schedule function scenario:check_countdown 40t
tag @a[team=hcm] remove in_tutorial
scoreboard players reset @a[team=hcm] tutorial
##Goal text here
tellraw @a[team=hcm,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Shoot mobs and reach the score goal before time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]