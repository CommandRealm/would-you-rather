function scenario:play_dodgeball/teleport
schedule function scenario:check_countdown 40t
tag @a[team=pd] remove in_tutorial
scoreboard players reset @a[team=pd] tutorial
##Goal text here
tellraw @a[team=pd,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Dodge shulker bullets until time runs out.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]