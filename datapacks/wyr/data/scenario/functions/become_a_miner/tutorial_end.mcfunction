
function scenario:become_a_miner/teleport
schedule function scenario:check_countdown 40t
tag @a[team=bam] remove in_tutorial
scoreboard players reset @a[team=bam] tutorial
tellraw @a[team=bam,tag=!in_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Use a Fortune pickaxe to obtain seven diamonds.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]