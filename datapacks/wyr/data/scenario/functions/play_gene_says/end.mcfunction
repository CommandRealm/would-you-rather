#kills:
tp @e[tag=pgs_die] 0 0 0
kill @e[tag=pgs_die]

scoreboard players set $pgs active_scenario 0
schedule function scenario:check_active_scenarios 40t