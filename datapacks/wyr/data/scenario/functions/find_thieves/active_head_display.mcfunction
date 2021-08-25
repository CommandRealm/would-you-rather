scoreboard players add @e[type=armor_stand,tag=ft_head_display] ft_timer 1
execute as @e[type=armor_stand,tag=ft_head_display,scores={ft_timer=..20}] at @s run tp @s ~ ~0.025 ~ ~6 ~
execute as @e[type=armor_stand,tag=ft_head_display,scores={ft_timer=21..40}] at @s run tp @s ~ ~0.05 ~ ~9 ~
execute as @e[type=armor_stand,tag=ft_head_display,scores={ft_timer=41..60}] at @s run tp @s ~ ~0.075 ~ ~11 ~
execute as @e[type=armor_stand,tag=ft_head_display,scores={ft_timer=61..80}] at @s run tp @s ~ ~0.1 ~ ~16 ~
execute as @e[type=armor_stand,tag=ft_head_display] at @s run particle cloud ~ ~0.65 ~ 0 0 0 0 1



execute as @e[type=armor_stand,tag=ft_head_display,scores={ft_timer=80}] at @s run function scenario:find_thieves/kill_head_display