#kills:
tp @e[tag=ptp_die] 0 0 0
kill @e[tag=ptp_die]

scoreboard players set $ptp active_scenario 0
schedule function scenario:check_active_scenarios 40t
