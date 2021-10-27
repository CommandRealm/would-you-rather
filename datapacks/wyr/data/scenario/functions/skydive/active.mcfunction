#timer:
scoreboard players add $time skydive 1

# telling people to jump
execute if score $time skydive matches 1 run function scenario:skydive/random_drop

# tellraws
execute if score $time skydive matches 200 run function scenario:skydive/announce_drop
execute if score $time skydive matches 300 run function scenario:skydive/warning_3
execute if score $time skydive matches 320 run function scenario:skydive/warning_2
execute if score $time skydive matches 340 run function scenario:skydive/warning_1

# ending
execute if score $time skydive matches 360 run function scenario:skydive/kick_players
execute if score $time skydive matches 540 run function scenario:skydive/round_over

# setting the timer if it takes too long
tag @a remove temporary_tag
execute as @a[team=skydive,gamemode=adventure] at @s run tag @s[y=68,dy=60] add temporary_tag
execute if score $time skydive matches ..460 unless entity @a[team=skydive,gamemode=adventure,tag=temporary_tag] run scoreboard players set $time skydive 460
tag @a remove temporary_tag

execute as @a[team=skydive,gamemode=adventure,scores={death=1..}] at @s run function scenario:skydive/fail


# getting skydive
execute as @a[tag=playing,team=skydive] at @s unless data entity @s Inventory[{Slot:8b,id:"minecraft:spyglass"}] run function scenario:skydive/get_spyglass

#activity:
execute if score $skydive active_scenario matches 1 run schedule function scenario:skydive/active 1t
execute if score $skydive active_scenario matches 1 unless entity @a[team=skydive] run function scenario:skydive/end