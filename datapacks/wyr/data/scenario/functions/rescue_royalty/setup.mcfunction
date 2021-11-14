clear @a[team=rap]
gamemode adventure @a[team=rap,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=rap_die] 0 0 0
kill @e[tag=rap_die]


scoreboard objectives remove rap_x
scoreboard objectives remove rap_y
scoreboard objectives remove rap_z
scoreboard objectives add rap_x dummy
scoreboard objectives add rap_y dummy
scoreboard objectives add rap_z dummy

##if scenario needs timer:
scoreboard objectives add rap_timer dummy
scoreboard objectives add rap_seconds dummy {"text":"Time Remaining","color":"dark_red","bold":true}


execute if entity @a[team=rap,tag=tutorial] run schedule function scenario:rescue_royalty/tutorial_setup 40t
execute unless entity @a[team=rap,tag=tutorial] run schedule function scenario:check_countdown 40t


