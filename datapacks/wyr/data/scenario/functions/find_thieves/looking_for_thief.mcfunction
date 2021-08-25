execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads
execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:player_head"}]}] run function scenario:find_thieves/get_heads







execute as @a[scores={ft_damage=1..},tag=playing,team=ft,gamemode=adventure] at @s run function scenario:find_thieves/check_damage


execute as @a[tag=playing,team=ft,gamemode=adventure,scores={ft_drop_head=1..}] at @s run function scenario:find_thieves/drop_head