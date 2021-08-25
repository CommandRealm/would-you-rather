
function scenario:grade_a_math_test/teleport
schedule function scenario:check_countdown 40t
tag @a[team=gamt] remove in_tutorial
scoreboard players reset @a[team=gamt] tutorial
tellraw @a[team=gamt,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Answer ten math questions with \"True\" or \"False\" correctly.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]