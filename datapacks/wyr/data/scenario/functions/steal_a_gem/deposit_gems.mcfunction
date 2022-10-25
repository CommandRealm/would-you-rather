scoreboard players set $deposit rab_money 0
scoreboard players set $5 number 5
scoreboard players set $10 number 10
scoreboard players set $15 number 15
scoreboard players set $20 number 20

execute store result score $5 rab_money run clear @s #minecraft:rab_5
scoreboard players operation $5 rab_money *= $5 number
execute store result score $10 rab_money run clear @s #minecraft:rab_10
scoreboard players operation $10 rab_money *= $10 number
execute store result score $15 rab_money run clear @s #minecraft:rab_15
scoreboard players operation $15 rab_money *= $15 number
execute store result score $20 rab_money run clear @s #minecraft:rab_20
scoreboard players operation $20 rab_money *= $20 number

execute store result score $gem rab_money run clear @s player_head{rab_gem:1}
execute store result score $gem_2 rab_money run clear @s player_head{rab_gem:1b}

scoreboard players operation $deposit rab_money += $5 rab_money
scoreboard players operation $deposit rab_money += $10 rab_money
scoreboard players operation $deposit rab_money += $15 rab_money
scoreboard players operation $deposit rab_money += $20 rab_money

execute if score $gem rab_money matches 1.. run scoreboard players operation $deposit rab_money = $goal rab_money
execute if score $gem_2 rab_money matches 1.. run scoreboard players operation $deposit rab_money = $goal rab_money

scoreboard players operation $current rab_money += $deposit rab_money

tellraw @a[team=rab] [{"text":"<","color":"blue"},{"text":"Miles","color":"green"},{"text":"> ","color":"blue"},{"selector":"@s","color":"blue"},{"text":" dropped off ","color":"aqua"},{"text":"$","color":"gold","bold":true},{"score":{"objective":"rab_money","name":"$deposit"},"bold":true,"color":"gold"},{"text":" worth of gems!","color":"aqua"}]