execute store result score $points awards if entity @a[tag=playing]
scoreboard players add $points awards 1
scoreboard players set $division awards 2
scoreboard players operation $points awards /= $division awards