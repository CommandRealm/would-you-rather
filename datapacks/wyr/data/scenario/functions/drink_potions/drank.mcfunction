tag @s remove ddp_selecting
scoreboard players remove @s ddp_bottles 1
execute if entity @a[tag=playing,team=ddp,scores={ddp_bottles=1..}] run scoreboard players set $time ddp_timer 700
execute if entity @a[tag=playing,team=ddp,scores={ddp_bottles=1..}] unless entity @a[tag=playing,team=ddp,tag=!ddp_selected] run tag @a remove ddp_selected
execute if entity @s[tag=!ddp_safe] run function scenario:drink_potions/start_death

execute unless entity @a[tag=playing,team=ddp,scores={check_players=1}] run tp @s[tag=ddp_safe] 30002 67 0 90 0

execute if entity @s[tag=ddp_safe] as @a[tag=playing,team=ddp] at @s run playsound minecraft:entity.witch.death master @s

scoreboard players reset @s ddp_cool

execute if entity @s[scores={ddp_bottles=0},tag=ddp_safe] run function scenario:drink_potions/success