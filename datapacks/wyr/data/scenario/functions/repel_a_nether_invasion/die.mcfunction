# called when we die.

execute if entity @s[team=rani_dead] run function scenario:repel_a_nether_invasion/undead/die
execute unless entity @s[team=rani_dead] run function scenario:repel_a_nether_invasion/fail
scoreboard players reset @s death