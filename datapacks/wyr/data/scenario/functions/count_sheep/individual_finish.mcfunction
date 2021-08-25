tag @s remove cs_locked_in
execute if score @s cs_sheep = $sheep cs_sheep run function scenario:count_sheep/success
execute unless score @s cs_sheep = $sheep cs_sheep run function scenario:count_sheep/fail
