clear @a[team=sas]
gamemode adventure @a[team=sas,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=sas_die] 0 0 0
kill @e[tag=sas_die]


##if scenario needs timer:
scoreboard objectives add sas_timer dummy
scoreboard objectives add sas_seconds dummy {"text":"Time Remaining","color":"blue","bold":true}


execute if entity @a[team=sas,tag=tutorial] run schedule function scenario:scale_a_storm/tutorial_setup 40t
execute unless entity @a[team=sas,tag=tutorial] run schedule function scenario:check_countdown 40t