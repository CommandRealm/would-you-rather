#called from general:main
#purpose is to reset players when they need it
scoreboard players add @s timeon 1
gamemode adventure @s[gamemode=!adventure]
tp @s -935 79 -155 0 -10
tag @s remove lobby
title @s times 0 25 5
function general:rank
scoreboard players add @s podium 0
scoreboard players add @s banners 0
scoreboard players add @s fans 0
scoreboard players add @s screen 0
scoreboard players reset @s id
tag @s remove playing
tag @s remove selecting
effect clear @s
clear @s
tag @s remove selected
tag @s remove maybe_winner
tag @s add recently_joined
tag @s remove playing_soon
scoreboard players set @s ready 0
scoreboard players set @s rc 0
tag @s remove in_tutorial
scoreboard players add @s resetting 1
execute if entity @s[scores={resetting=1}] run function general:reset
tag @s remove tutorial
tag @s remove potential_cosmetic
recipe take @s *
tag @s remove cs_playing
xp set @s 0 levels
xp set @s 0 points
tag @s remove mute_own_fan
attribute @s minecraft:generic.max_health base set 20
bossbar set lobby players @a[tag=!playing,tag=!playing_soon]