clear @a[team=ol]
gamemode adventure @a[team=ol,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=ol_die] 0 0 0
kill @e[tag=ol_die]


##if scenario needs timer:
scoreboard objectives remove ol_seconds
scoreboard objectives add ol_timer dummy
scoreboard objectives add ol_seconds dummy [{"text":"Time Remaining","bold":true,"color":"#ff7e00"}]

execute if entity @a[team=ol,tag=tutorial] run schedule function scenario:outrun_lava/tutorial_setup 40t
execute unless entity @a[team=ol,tag=tutorial] run schedule function scenario:check_countdown 40t
execute unless entity @a[team=ol,tag=tutorial] run schedule function scenario:outrun_lava/delayed_teleport 80t

fill 24052 49 2 23972 50 -149 air replace lava
fill 24052 51 2 23972 52 -149 air replace lava
fill 24052 53 2 23972 54 -149 air replace lava
fill 24052 55 2 23972 56 -149 air replace lava
fill 24052 57 2 23972 58 -149 air replace lava
fill 24052 59 2 23972 60 -149 air replace lava
fill 24052 61 2 23972 62 -149 air replace lava
fill 24052 63 2 23972 64 -149 air replace lava
fill 24052 65 2 23972 66 -149 air replace lava
fill 24052 67 2 23972 68 -149 air replace lava
fill 24052 69 2 23972 70 -149 air replace lava
fill 24052 71 2 23972 72 -149 air replace lava
fill 24052 73 2 23972 74 -149 air replace lava
fill 24052 75 2 23972 76 -149 air replace lava
fill 24052 77 2 23972 78 -149 air replace lava
fill 24052 79 2 23972 80 -149 air replace lava
fill 24052 81 2 23972 82 -149 air replace lava
fill 24052 83 2 23972 84 -149 air replace lava
fill 24052 85 2 23972 86 -149 air replace lava
fill 24052 87 2 23972 88 -149 air replace lava
fill 24052 89 2 23972 90 -149 air replace lava
fill 24052 91 2 23972 92 -149 air replace lava
fill 24052 93 2 23972 94 -149 air replace lava
fill 24052 95 2 23972 96 -149 air replace lava
fill 24052 97 2 23972 98 -149 air replace lava
fill 24052 99 2 23972 100 -149 air replace lava
fill 24001 67 -6 24001 68 -6 minecraft:structure_void