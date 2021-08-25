
function scenario:cook_mushroom_soups/teleport
schedule function scenario:check_countdown 40t
tag @a[team=cms] remove in_tutorial
scoreboard players reset @a[team=cms] tutorial
##Goal text here
tellraw @a[team=cms,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Put together three mushroom soups and deliver them to the customers.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]