execute if entity @s[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..,ft_drop_head=1..,ft_cooldown=0}] at @s anchored eyes run function scenario:find_thieves/summon_head_display
title @s[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..,ft_drop_head=1..,ft_cooldown=1..}] actionbar [{"text":"You cannot see the thief-display right now. Please try again later.","color":"red"}]
playsound minecraft:block.note_block.didgeridoo master @s[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..,ft_drop_head=1..,ft_cooldown=1..}] ~ ~ ~ 1000 1
scoreboard players reset @s ft_drop_head
