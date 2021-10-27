# called when the round is over.

execute if score $drop skydive matches 5 as @a[team=skydive,gamemode=adventure] at @s run function scenario:skydive/success
execute unless score $drop skydive matches 5 run title @a[team=skydive] title [{"text":"Well done","color":"yellow"},{"text":"!","color":"gold"}]

execute unless score $drop skydive matches 5 as @a[team=skydive,gamemode=adventure] at @s run scoreboard players set $time skydive 0

execute unless score $drop skydive matches 5 run tp @a[team=skydive,gamemode=adventure] 20051 114 -15 -90 5
execute unless score $drop skydive matches 5 as @a[team=skydive] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1000 1.25
particle cloud 20051 115 -15 0.15 0.5 0.15 0.5 35