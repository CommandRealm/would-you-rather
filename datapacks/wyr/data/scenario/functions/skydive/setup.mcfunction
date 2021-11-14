clear @a[team=skydive]
gamemode adventure @a[team=skydive,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=skydive_die] 0 0 0
kill @e[tag=skydive_die]



scoreboard objectives add skydive dummy
scoreboard players set $drop skydive 0
scoreboard players set $time skydive 0

execute if entity @a[team=skydive,tag=tutorial] run schedule function scenario:skydive/tutorial_setup 40t
execute unless entity @a[team=skydive,tag=tutorial] run schedule function scenario:check_countdown 40t