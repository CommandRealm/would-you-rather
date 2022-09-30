scoreboard players set $time bam_old_timer 10000
scoreboard players set $bam_old active_scenario 1
function scenario:become_a_miner_old/active
fill 8997 65 -2 8999 96 0 air

tag @e[tag=bam_old_spawn,type=area_effect_cloud] remove bam_old_diamond
execute as @e[tag=bam_old_spawn,type=area_effect_cloud] at @s if block ~ ~ ~ diamond_ore run setblock ~ ~ ~ stone
execute as @e[tag=bam_old_spawn,type=area_effect_cloud] at @s if block ~ ~ ~ air run setblock ~ ~ ~ stone

execute as @a[tag=playing,team=bam_old,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=bam_old,gamemode=adventure]
execute if entity @a[tag=playing,team=bam_old,scores={check_players=1}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=3] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=2}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=6] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=3}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=9] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=4}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=11] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=5}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=14] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=6}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=17] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=7}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=22] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=8}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=24] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=9}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=26] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=10}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=28] at @s run setblock ~ ~ ~ diamond_ore
execute if entity @a[tag=playing,team=bam_old,scores={check_players=11}] as @e[tag=bam_old_spawn,type=area_effect_cloud,sort=random,limit=30] at @s run setblock ~ ~ ~ diamond_ore

bossbar remove become_a_miner_old:diamonds
bossbar add become_a_miner_old:diamonds {"text":"Remaining Diamond Ore","color":"dark_aqua","bold":true}
bossbar set become_a_miner_old:diamonds visible false
bossbar set become_a_miner_old:diamonds players @a[tag=playing,team=bam_old]
bossbar set become_a_miner_old:diamonds color blue

scoreboard players set $diamonds bam_old_bar 0

execute as @e[tag=bam_old_spawn,type=area_effect_cloud] at @s if block ~ ~ ~ diamond_ore run tag @s add bam_old_diamond
execute as @e[tag=bam_old_spawn,type=area_effect_cloud,tag=bam_old_diamond] at @s run scoreboard players add $diamonds bam_old_bar 1


execute store result bossbar become_a_miner_old:diamonds max run scoreboard players get $diamonds bam_old_bar
execute store result bossbar become_a_miner_old:diamonds value run scoreboard players get $diamonds bam_old_bar

effect give @a[team=bam_old] minecraft:levitation 10000 255 true
effect give @a[team=bam_old] minecraft:invisibility 25 255 true
bossbar set become_a_miner_old:diamonds visible true


advancement grant @a[team=bam_old,tag=playing,gamemode=adventure] only advancements:scenario_miner