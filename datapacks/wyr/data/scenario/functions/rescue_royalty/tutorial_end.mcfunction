
function scenario:rescue_royalty/teleport
schedule function scenario:check_countdown 40t
tag @a[team=rap] remove in_tutorial
scoreboard players reset @a[team=rap] tutorial
##Goal text here
tellraw @a[team=rap,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Kill a knight to obtain their key and then secure the top of the tower.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]