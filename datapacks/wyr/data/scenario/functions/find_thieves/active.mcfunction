#timer:
scoreboard players remove $time ft_timer 1
scoreboard players operation : ft_timer = $time ft_timer
scoreboard players operation : ft_timer /= $20 number
scoreboard players add : ft_timer 1
execute unless score : ft_timer = : ft_seconds run scoreboard players operation : ft_seconds = : ft_timer





#activity:
execute if score $ft active_scenario matches 1 if score $time ft_timer matches 1.. run schedule function scenario:find_thieves/active 1t
execute if score $ft active_scenario matches 1 unless entity @a[team=ft] run function scenario:find_thieves/end

##Clearing wolves
scoreboard players add @e[type=wolf,tag=ft_die] ft_timer 1
execute as @e[type=wolf,tag=ft_die,scores={ft_timer=100}] at @s run function scenario:find_thieves/kill_and_tp


##Player timers
scoreboard players add @a[tag=playing,team=ft,gamemode=adventure] ft_timer 1
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=20}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 10000 0.6
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35}] at @s run function scenario:find_thieves/wanted_title
execute if entity @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] run function scenario:find_thieves/looking_for_thief

##execute if entity @e[type=skeleton,tag=ft_thief_caught] run function scenario:find_thieves/caught_thief


execute as @a[scores={ft_damage=1..,ft_timer=..34},tag=playing,team=ft,gamemode=adventure] at @s run function scenario:find_thieves/fail
execute if score $time ft_timer matches 0 as @a[tag=playing,team=ft,gamemode=adventure] at @s run function scenario:find_thieves/fail

execute if entity @e[type=armor_stand,tag=ft_head_display] run function scenario:find_thieves/active_head_display

scoreboard players remove @a[scores={ft_cooldown=1..},tag=playing,gamemode=adventure,team=ft] ft_cooldown 1