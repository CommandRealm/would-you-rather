clear @a[team=wat]
gamemode adventure @a[team=wat,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=wat_die] 0 0 0
kill @e[tag=wat_die]


##if scenario needs timer:
scoreboard objectives add wat_timer dummy
scoreboard objectives add wat_seconds dummy {"text":"Time Remaining","color":"gold","bold":true}


execute if entity @a[team=wat,tag=tutorial] run schedule function scenario:walk_a_tightrope/tutorial_setup 40t
execute unless entity @a[team=wat,tag=tutorial] run schedule function scenario:check_countdown 40t