clear @a[team=gf]
gamemode adventure @a[team=gf,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=gf_die] 0 0 0
kill @e[tag=gf_die]


##if scenario needs timer:
scoreboard objectives add gf_timer dummy
scoreboard objectives add gf_seconds dummy {"text":"Time Remaining","color":"blue","bold":true}


execute if entity @a[team=gf,tag=tutorial] run schedule function scenario:go_fishing/tutorial_setup 40t
execute unless entity @a[team=gf,tag=tutorial] run schedule function scenario:check_countdown 40t


scoreboard objectives remove gf_points
scoreboard objectives remove gf_compare
scoreboard objectives add gf_points dummy
scoreboard objectives add gf_compare dummy

scoreboard objectives remove gf_fish
scoreboard objectives add gf_fish minecraft.custom:minecraft.fish_caught