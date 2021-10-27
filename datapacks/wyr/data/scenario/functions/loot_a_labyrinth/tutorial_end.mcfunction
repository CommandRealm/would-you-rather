

tag @a[team=labyrinth] remove in_tutorial
scoreboard players reset @a[team=labyrinth] tutorial
function scenario:loot_a_labyrinth/teleport
schedule function scenario:check_countdown 40t
##Goal text here
tellraw @a[team=labyrinth,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Find five different treasures and return to the beacon.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]