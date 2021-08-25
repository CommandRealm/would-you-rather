#purpose is to end the game
tag @a remove just_played
tag @a[tag=playing] add just_played
execute as @a[tag=potential_cosmetic,tag=playing] at @s run function cosmetic:potential_unlock
tag @a remove potential_cosmetic
scoreboard players set @a ready 0
tag @a[tag=playing_soon] add playing
tag @a[tag=playing_soon] remove playing_soon
execute if score $number auto_ready matches 1 run scoreboard players set @a[tag=playing] ready 1
tag @a[tag=spectating] add playing
tag @a remove spectating
effect clear @a[tag=playing]
clear @a[tag=playing]
scoreboard players set $game state 0
tp @a[tag=playing] -935 79 -155 0 -10
execute as @a[tag=playing] at @s run function general:rank

title @a[tag=playing] times 0 25 5
scoreboard players set $time startup_timer -101
scoreboard players set $time showstart 10000000
bossbar set minecraft:guesstime visible false
bossbar set minecraft:choosetime visible false
bossbar set minecraft:bettime visible false
bossbar set minecraft:play_gene_says/time visible false
gamemode adventure @a[tag=playing,gamemode=!adventure]
tag @a remove hungry
bossbar set survive_in_the_wilderness:campfire visible false
scoreboard players set $scenario active 0
tag @a remove in_tutorial
spawnpoint @a -935 79 -155
tag @a[tag=playing] remove playing
scoreboard objectives setdisplay list
function scenario:reset_player
function scenario:deactivate_scenarios
scoreboard players set $number check_gene 0
scoreboard players set $time gene_timer 0
scoreboard objectives setdisplay sidebar
function show:open_gates

execute as @e[type=armor_stand,tag=die_at_end] at @s run particle minecraft:cloud ~ ~ ~ 0 0.25 0 0.15 1
execute as @e[type=armor_stand,tag=die_at_end] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @e[type=armor_stand,tag=die_at_end] at @s run kill @s


execute as @e[tag=fan] at @s run particle minecraft:cloud ~ ~ ~ 0 0.25 0 0.15 1
execute as @e[tag=fan] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @e[tag=fan] at @s run tp @s 0 0 0
execute as @e[tag=fan] at @s run kill @s

##harv
fill -983 74 -13 -978 78 -9 air

#forceloads:
forceload remove 15950 9 15901 -26
scoreboard objectives remove stop_spectating
clear @a knowledge_book
setblock -982 73 -11 air 

function show:reset_tv

function show:reset_podiums

kill @e[tag=gene,type=armor_stand]