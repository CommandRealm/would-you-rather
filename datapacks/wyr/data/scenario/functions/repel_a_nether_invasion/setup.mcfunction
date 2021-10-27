clear @a[team=rani]
gamemode adventure @a[team=rani]

#kills:
tp @e[tag=rani_die] 0 0 0
kill @e[tag=rani_die]


##if scenario needs timer:
scoreboard objectives add rani_timer dummy
scoreboard objectives add rani_seconds dummy {"text":"Time Remaining","color":"dark_red","bold":true}


# objs
scoreboard objectives remove rani_skele
scoreboard objectives remove rani_player
scoreboard objectives remove rani_blaze
scoreboard objectives remove rani_cube
scoreboard objectives remove rani_kills

scoreboard objectives add rani_player minecraft.killed:player
scoreboard objectives add rani_skele minecraft.killed:wither_skeleton
scoreboard objectives add rani_blaze minecraft.killed:blaze
scoreboard objectives add rani_cube minecraft.killed:magma_cube
scoreboard objectives add rani_kills_left dummy

scoreboard objectives remove rani_d_cool
scoreboard objectives add rani_d_cool dummy

# team
team add rani_dead
team modify rani_dead color gray
team modify rani_dead prefix [{"text":"☠ ","color":"dark_red"}]
team modify rani_dead friendlyFire false

scoreboard players set @a[team=rani,gamemode=adventure] rani_kills_left 15

execute if entity @a[team=rani,tag=tutorial] run schedule function scenario:repel_a_nether_invasion/tutorial_setup 40t
execute unless entity @a[team=rani,tag=tutorial] run schedule function scenario:check_countdown 40t