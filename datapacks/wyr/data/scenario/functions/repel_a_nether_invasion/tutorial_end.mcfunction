
function scenario:repel_a_nether_invasion/teleport
schedule function scenario:check_countdown 40t
tag @a[team=rani] remove in_tutorial
scoreboard players reset @a[team=rani] tutorial
##Goal text here
tellraw @a[team=rani,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Kill fifteen mobs and return to a beacon.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]