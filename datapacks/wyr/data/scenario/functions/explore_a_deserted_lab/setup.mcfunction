clear @a[team=eadl]
gamemode adventure @a[team=eadl]

#kills:
tp @e[tag=eadl_die] 0 0 0
kill @e[tag=eadl_die]


##if scenario needs timer:
scoreboard objectives add eadl_timer dummy
scoreboard objectives add eadl_seconds dummy {"text":"Time Remaining","color":"dark_aqua","bold":true}

scoreboard objectives remove eadl_beep
scoreboard objectives remove eadl_set_beep

scoreboard objectives add eadl_beep dummy
scoreboard objectives add eadl_set_beep dummy

scoreboard objectives remove eadl_1
scoreboard objectives remove eadl_2
scoreboard objectives remove eadl_3

scoreboard objectives add eadl_1 dummy
scoreboard objectives add eadl_2 dummy
scoreboard objectives add eadl_3 dummy

# clearing blocks
setblock 8010 56 -3 air
setblock 8011 56 -1 air
setblock 8010 56 1 air

execute if entity @a[team=eadl,tag=tutorial] run schedule function scenario:explore_a_deserted_lab/tutorial_setup 40t
execute unless entity @a[team=eadl,tag=tutorial] run schedule function scenario:check_countdown 40t