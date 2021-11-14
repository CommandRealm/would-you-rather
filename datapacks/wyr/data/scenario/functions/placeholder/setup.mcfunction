clear @a[team=placeholder]
gamemode adventure @a[team=placeholder,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=placeholder_die] 0 0 0
kill @e[tag=placeholder_die]


##if scenario needs timer:
##scoreboard objectives add placeholder_timer dummy
##scoreboard objectives add placeholder_seconds dummy {"text":"Time Remaining","color":"dark_red","bold":true}


execute if entity @a[team=placeholder,tag=tutorial] run schedule function scenario:placeholder/tutorial_setup 40t
execute unless entity @a[team=placeholder,tag=tutorial] run schedule function scenario:check_countdown 40t