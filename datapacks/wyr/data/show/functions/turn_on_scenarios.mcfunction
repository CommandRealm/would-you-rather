execute as @r run function options:scenario/toggle_arb
execute as @r run function options:scenario/toggle_bafe
execute if score $number scenario_screen matches 1..2 run function options:scenario/display_status