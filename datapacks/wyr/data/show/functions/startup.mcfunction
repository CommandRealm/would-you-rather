tag @a remove selected
#called from pregame:countdown
#purpose is to start the game
tag @a[scores={ready=1}] add playing
tag @a[tag=playing] remove lobby
title @a[tag=playing] title {"text":" "}
title @a[tag=playing] subtitle {"text":" "}
scoreboard players set @a ready 0
scoreboard players set $game state 1
tp @a[tag=playing] -931 24 -17 230 0
scoreboard players set $time showstart 0
clear @a[tag=playing]
team join wyr @a[tag=playing]
scoreboard objectives remove points
scoreboard objectives add points dummy {"text":"- P o i n t s -","color":"gold"}
scoreboard objectives setdisplay sidebar points
scoreboard players add @a points 0
scoreboard players reset @a[tag=!playing] points
gamemode adventure @a[tag=playing,gamemode=!adventure]
tag @a remove spectator
tag @a remove selecting
scoreboard players set $round round 1
scoreboard players operation $criteria round = $round round_criteria
effect clear @a[tag=playing]
tag @e[type=area_effect_cloud,tag=wyrselected] remove wyrselected
bossbar set lobby players @a[tag=!playing,tag=!playing_soon]
scoreboard players set Round: points -1
team modify round suffix [{"text":" 1","color":"gold"}]
scoreboard players enable @a c_cheer
scoreboard players enable @a c_jeer
scoreboard players set @a c_cheer 0
scoreboard players set @a c_jeer 0
scoreboard players set @a c_cooldown 0
scoreboard players add @a cheer 0
scoreboard players add @a jeer 0
gamerule doTileDrops false
function gene:entrance
scoreboard players set $number check_gene 1
scoreboard players set $time gene_timer 0
function gene:gene_random
scoreboard players operation $number gene_entrance = $Rand gene
scoreboard players set $clap clap 0
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard players reset @a[tag=playing] adjust_points

function fans:start_generation

function show:open_gates
scoreboard players reset @a spectator
function scenario:deactivate_scenarios
#forceloads: 
forceload remove 15950 9 15901 -26
execute if score $number awards matches 1 run function awards:generate

tag @a remove tutorial
execute if score $number tutorial matches 1 run tag @a[tag=playing] add tutorial


scoreboard objectives remove stop_spectating
scoreboard objectives add stop_spectating trigger
clear @a knowledge_book
tag @a remove skipped_scenario
tag @a remove mute_own_fan


execute store result score $scenario number if entity @e[tag=scenario,type=area_effect_cloud]
execute if score $scenario number matches ..1 run function show:turn_on_scenarios