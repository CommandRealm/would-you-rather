scoreboard players set $time ol_timer 900
scoreboard players set $ol active_scenario 1
scoreboard players set @a[tag=playing,team=ol] death 0
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue ol_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow ol_seconds



fill 24052 49 2 23972 50 -147 air replace lava
fill 24052 51 2 23972 52 -147 air replace lava
fill 24052 53 2 23972 54 -147 air replace lava
fill 24052 55 2 23972 56 -147 air replace lava
fill 24052 57 2 23972 58 -147 air replace lava
fill 24052 59 2 23972 60 -147 air replace lava
fill 24052 61 2 23972 62 -147 air replace lava
fill 24052 63 2 23972 64 -147 air replace lava
fill 24052 65 2 23972 66 -147 air replace lava
fill 24052 67 2 23972 68 -147 air replace lava
fill 24052 69 2 23972 70 -147 air replace lava
fill 24052 71 2 23972 72 -147 air replace lava
fill 24052 73 2 23972 74 -147 air replace lava
fill 24052 75 2 23972 76 -147 air replace lava
fill 24052 77 2 23972 78 -147 air replace lava
fill 24052 79 2 23972 80 -147 air replace lava
fill 24052 81 2 23972 82 -147 air replace lava
fill 24052 83 2 23972 84 -147 air replace lava
fill 24052 85 2 23972 86 -147 air replace lava
fill 24052 87 2 23972 88 -147 air replace lava
fill 24052 89 2 23972 90 -147 air replace lava
fill 24052 91 2 23972 92 -147 air replace lava
fill 24052 93 2 23972 94 -147 air replace lava
fill 24052 95 2 23972 96 -147 air replace lava
fill 24052 97 2 23972 98 -147 air replace lava
fill 24052 99 2 23972 100 -147 air replace lava

scoreboard players set $lava ol_timer 0
scoreboard players set $check ol_timer 0
scoreboard players set $alternate ol_timer 20
scoreboard players set $tick_alternate ol_timer 1


fill 23995 72 -11 24000 71 -5 air replace water
function scenario:outrun_lava/active

title @a[team=ol,gamemode=adventure] subtitle [{"text":"Run!","color":"red"}]

effect give @a[tag=playing,team=ol] invisibility 10000 255 true
title @a[tag=playing,team=ol] times 0 30 5