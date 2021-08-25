scoreboard players set $mod random 5
function random:random


scoreboard players set @s sitw_hunger_cool 160
execute if entity @s[scores={sitw_heat=0}] run scoreboard players set @s sitw_hunger_cool 50
scoreboard players operation @s sitw_hunger_cool /= @s check_players

execute if score $rand random matches 1.. run scoreboard players remove @s[scores={sitw_d_hunger=1..}] sitw_d_hunger 1
scoreboard players add @s[team=sitw,scores={sitw_hunger_cool=..0}] sitw_hunger_cool 95