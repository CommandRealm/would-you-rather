execute if entity @s[advancements={game:invisible/find_thieves/punch_thief_1=true},scores={ft_thief=1}] run function scenario:find_thieves/punch_thief
execute if entity @s[advancements={game:invisible/find_thieves/punch_thief_2=true},scores={ft_thief=2}] run function scenario:find_thieves/punch_thief
execute if entity @s[advancements={game:invisible/find_thieves/punch_thief_3=true},scores={ft_thief=3}] run function scenario:find_thieves/punch_thief
execute unless entity @s[tag=ft_punched_thief] run function scenario:find_thieves/fail
tag @s remove ft_punched_thief
scoreboard players reset @s ft_damage
advancement revoke @s only game:invisible/find_thieves/punch_thief_1
advancement revoke @s only game:invisible/find_thieves/punch_thief_2
advancement revoke @s only game:invisible/find_thieves/punch_thief_3
