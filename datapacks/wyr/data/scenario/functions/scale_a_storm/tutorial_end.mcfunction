
function scenario:scale_a_storm/teleport
schedule function scenario:check_countdown 40t
tag @a[team=sas] remove in_tutorial
scoreboard players reset @a[team=sas] tutorial
##Goal text here
tellraw @a[team=sas,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Use tridents to go through the checkered circle right under the cloud.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]