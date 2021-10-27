


scoreboard players set $time showstart 2995
function show:timer
scoreboard players add @a[team=select] points 4
execute as @a[team=select] at @s run tellraw @a [{"selector":"@s"},{"text":" +4 points!","color":"green"}]
function show:points_succeed
scoreboard players set $scenario active 0
title @a[tag=playing] title {"text":"Success!","color":"green"}

tag @a remove hungry
function gene:s_win
function scenario:reset_player