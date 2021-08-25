
function scenario:steal_a_gem/teleport
schedule function scenario:check_countdown 40t
tag @a[team=rab] remove in_tutorial
scoreboard players reset @a[team=rab] tutorial
bossbar set steal_a_gem:suspicion visible true
##Goal text here
tellraw @a[team=rab,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Loot up, get to the vault, take the gem, and get to your truck.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]