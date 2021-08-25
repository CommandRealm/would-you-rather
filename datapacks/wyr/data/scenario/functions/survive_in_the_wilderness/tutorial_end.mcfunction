bossbar set survive_in_the_wilderness:campfire players
function scenario:survive_in_the_wilderness/teleport
schedule function scenario:check_countdown 40t
tag @a[team=sitw] remove in_tutorial
scoreboard players reset @a[team=sitw] tutorial
tellraw @a[team=sitw,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Keep your statistics (Warmth, Hunger, and Thirst) above zero until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]