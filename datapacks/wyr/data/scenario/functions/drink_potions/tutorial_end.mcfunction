
function scenario:drink_potions/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ddp] remove in_tutorial
kill @e[type=armor_stand,tag=ddp_tutorial]
scoreboard players reset @a[team=ddp] tutorial
##Goal text here
tellraw @a[team=ddp,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Drink a potion, then hope it's not poisonous.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]