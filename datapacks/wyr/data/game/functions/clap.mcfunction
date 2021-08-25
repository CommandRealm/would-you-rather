scoreboard players remove $clap clap 1
scoreboard players remove $clap clap5 1
execute if score $clap clap5 matches ..1 run scoreboard players set $clap clap5 5
execute if score $clap clap5 matches 5 as @r at @s run function game:clap_random
execute if score $clap clap5 matches 5 as @a[tag=playing] at @s run function game:clap_sound