clear @a[team=npab]
gamemode adventure @a[team=npab,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=npab_die] 0 0 0
kill @e[tag=npab_die]


##if scenario needs timer:
scoreboard objectives add npab_timer dummy
scoreboard objectives add npab_seconds dummy {"text":"Time Remaining","color":"dark_red","bold":true}
scoreboard players set $button npab_timer -1
setblock 6000 69 -1 minecraft:polished_blackstone_button[face=floor,facing=north,powered=false]


execute if entity @a[team=npab,tag=tutorial] run schedule function scenario:not_push_a_button/tutorial_setup 40t
execute unless entity @a[team=npab,tag=tutorial] run schedule function scenario:check_countdown 40t