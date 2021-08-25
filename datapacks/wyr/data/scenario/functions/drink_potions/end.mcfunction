scoreboard players set $ddp active_scenario 0
schedule function scenario:check_active_scenarios 40t
tag @a remove ddp_face_witch
tag @a remove ddp_selecting
tag @a remove ddp_selected
tp @e[tag=ddp_die] 0 1 0
kill @e[tag=ddp_die]