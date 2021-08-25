effect give @a[tag=playing,team=bafe] jump_boost 5 200 true
scoreboard players set $time bafe_timer 500
scoreboard players set @a[tag=playing,team=bafe] bafe_motion 10000
scoreboard players set $bafe active_scenario 1
function scenario:become_a_fan/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue bafe_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow bafe_seconds
execute as @a[team=bafe,tag=playing] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 10000000 2
tag @a remove bafe_head_hit
title @a[team=bafe,tag=playing] title [{"text":" "}]
title @a[team=bafe,tag=playing] subtitle {"text":" "}
scoreboard players set @a[team=bafe,tag=playing] bafe_blindness 0