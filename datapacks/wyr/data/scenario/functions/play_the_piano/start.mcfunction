scoreboard players set @a[tag=playing,team=ptp,gamemode=adventure] ptp_timer 0
scoreboard players set $ptp active_scenario 1
function scenario:play_the_piano/active
title @a[tag=playing,team=ptp] times 0 25 5
scoreboard players set @a[tag=playing,team=ptp,gamemode=adventure] ptp_code 0
scoreboard players reset @a ptp_drop

effect give @a[tag=playing,team=ptp,gamemode=adventure] invisibility 1000000 255 true



