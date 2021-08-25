
function scenario:placeholder/teleport
schedule function scenario:check_countdown 40t
tag @a[team=placeholder] remove in_tutorial
scoreboard players reset @a[team=placeholder] tutorial
##Goal text here