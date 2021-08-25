scoreboard players set $mod random 10
function random:random
scoreboard players set @s sitw_thirst_cool 140
execute if entity @s[scores={sitw_heat=0}] run scoreboard players set @s sitw_thirst_cool 60

scoreboard players operation @s sitw_thirst_cool /= @s check_players
execute if score $rand random matches 1.. run scoreboard players remove @s[scores={sitw_thirst=1..}] sitw_thirst 1
scoreboard players add @s[team=sitw,scores={sitw_thirst_cool=..0}] sitw_thirst_cool 85