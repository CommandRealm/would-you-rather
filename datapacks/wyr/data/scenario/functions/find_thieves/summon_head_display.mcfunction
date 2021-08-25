execute positioned ~ ~-0.4 ~ run summon armor_stand ^ ^ ^2 {Tags:["ft_die","ft_head_display","ft_head_display_need_rotation"],Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Small:1b}
execute positioned as @e[type=armor_stand,tag=ft_head_display_need_rotation] run tp @e[type=armor_stand,tag=ft_head_display_need_rotation] ~ ~ ~ facing entity @s
execute if entity @s[scores={ft_thief=1}] as @e[type=armor_stand,tag=ft_head_display_need_rotation] at @s run data modify entity @s ArmorItems[3] set from entity @e[type=skeleton,tag=ft_thief_1,limit=1] ArmorItems[3]
execute if entity @s[scores={ft_thief=2}] as @e[type=armor_stand,tag=ft_head_display_need_rotation] at @s run data modify entity @s ArmorItems[3] set from entity @e[type=skeleton,tag=ft_thief_2,limit=1] ArmorItems[3]
execute if entity @s[scores={ft_thief=3}] as @e[type=armor_stand,tag=ft_head_display_need_rotation] at @s run data modify entity @s ArmorItems[3] set from entity @e[type=skeleton,tag=ft_thief_3,limit=1] ArmorItems[3]
tag @e[type=armor_stand,tag=ft_head_display_need_rotation] remove ft_head_display_need_rotation
scoreboard players reset @s ft_drop_head
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 1
scoreboard players set @s ft_cooldown 200