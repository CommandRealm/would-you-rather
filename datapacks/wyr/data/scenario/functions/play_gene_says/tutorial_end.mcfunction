
function scenario:play_gene_says/teleport
schedule function scenario:check_countdown 40t
tag @a[team=pgs] remove in_tutorial
scoreboard players reset @a[team=pgs] tutorial
##Goal text here
tellraw @a[team=pgs,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Follow Gene's instructions. Disobey his instructions if it isn't preceded by: \"Gene says.\"","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]