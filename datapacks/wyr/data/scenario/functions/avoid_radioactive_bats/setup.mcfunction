clear @a[team=arb]
gamemode adventure @a[team=arb,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=arb_die] 0 0 0
kill @e[tag=arb_die]


##if scenario needs timer:
scoreboard objectives add arb_timer dummy
scoreboard objectives add arb_seconds dummy {"text":"Time Remaining","color":"green","bold":true}


execute if entity @a[team=arb,tag=tutorial] run schedule function scenario:avoid_radioactive_bats/tutorial_setup 40t
execute unless entity @a[team=arb,tag=tutorial] run schedule function scenario:check_countdown 40t


scoreboard players set $mod random 30
function random:random
execute if score $rand random matches 0 run clone 14991 16 -9 15009 16 9 14991 60 -9
execute if score $rand random matches 1..9 run clone 14991 7 -9 15009 7 9 14991 60 -9
execute if score $rand random matches 10..19 run clone 14991 10 -9 15009 10 9 14991 60 -9
execute if score $rand random matches 20..29 run clone 14991 13 -9 15009 13 9 14991 60 -9


fill 14991 70 -9 15009 70 9 barrier

fill 14991 71 10 15009 73 10 barrier

fill 15010 71 9 15010 73 -9 barrier

fill 15010 71 -10 14991 73 -10 barrier

fill 14990 71 9 14990 73 -9 barrier

fill 14991 74 -9 15009 74 9 barrier