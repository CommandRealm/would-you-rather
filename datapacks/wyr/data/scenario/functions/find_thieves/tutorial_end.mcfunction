
function scenario:find_thieves/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ft] remove in_tutorial
tp @e[type=skeleton,tag=ft_die] 0 0 0
kill @e[type=skeleton,tag=ft_die]
scoreboard players reset @a[team=ft] tutorial
##Goal text here
tellraw @a[team=ft,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Match the thieves in the crowd to the player head in your inventory. Punch three thieves to win the scenario.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]