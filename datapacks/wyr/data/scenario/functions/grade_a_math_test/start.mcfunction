title @a[team=gamt] times 5 30 5
effect clear @a[team=gamt] invisibility
scoreboard players set $time gamt_timer 100
scoreboard players set $gamt active_scenario 1
function scenario:grade_a_math_test/active
clear @s

