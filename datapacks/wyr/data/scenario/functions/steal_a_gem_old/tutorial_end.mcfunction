
function scenario:steal_a_gem_old/teleport
schedule function scenario:check_countdown 40t
tag @a[team=rab_old] remove in_tutorial
scoreboard players reset @a[team=rab_old] tutorial
bossbar set steal_a_gem_old:suspicion visible true
##Goal text here
tellraw @a[team=rab_old,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Loot up, get to the vault, take the gem, and get to your truck.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]