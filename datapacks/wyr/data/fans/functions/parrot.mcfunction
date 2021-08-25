scoreboard players add $time parrot_timer 1
execute as @e[type=parrot,tag=fan_perry] if score $time parrot_timer matches 0 run data merge entity @s {Variant:0}
execute as @e[type=parrot,tag=fan_perry] if score $time parrot_timer matches 7 run data merge entity @s {Variant:1}
execute as @e[type=parrot,tag=fan_perry] if score $time parrot_timer matches 14 run data merge entity @s {Variant:2}
execute as @e[type=parrot,tag=fan_perry] if score $time parrot_timer matches 21 run data merge entity @s {Variant:3}
execute as @e[type=parrot,tag=fan_perry] if score $time parrot_timer matches 28 run data merge entity @s {Variant:4}
execute if score $time parrot_timer matches 28 run scoreboard players set $time parrot_timer 0