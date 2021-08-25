execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=10..}] at @s unless entity @a[tag=playing,gamemode=adventure] unless entity @a[tag=playing,gamemode=spectator,scores={spectator=..0}] if entity @a[tag=playing,gamemode=spectator,tag=in_tutorial] unless entity @a[tag=playing,gamemode=spectator,tag=in_tutorial,distance=..5] run tp @s @p[tag=playing,gamemode=spectator,tag=in_tutorial]
execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=10..}] at @s unless entity @a[tag=playing,gamemode=adventure] if entity @a[tag=playing,gamemode=spectator,scores={spectator=..0}] unless entity @a[tag=playing,gamemode=spectator,scores={spectator=..0},distance=..5] run tp @s @p[tag=playing,gamemode=spectator,scores={spectator=..0}]
execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=5}] at @s if entity @a[tag=playing,gamemode=adventure] run function game:spectate_player
execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=9}] at @s if entity @a[tag=playing,gamemode=adventure] run function game:spectator/remove_blindness_effect
execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=9..}] at @s if entity @a[tag=playing,gamemode=adventure] unless entity @a[tag=playing,gamemode=adventure,distance=..3] run function game:spectate_player
execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=10..}] at @s if entity @a[tag=playing,gamemode=adventure] run spectate @p[tag=playing,gamemode=adventure] @s
execute if score $scenario active matches 1 if entity @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=10..}] if entity @a[tag=playing,gamemode=adventure] run function game:spectate_msg
execute as @a[gamemode=spectator,tag=!building,tag=!in_tutorial,scores={spectator=15}] at @s if entity @a[tag=playing,gamemode=adventure] run function game:unspectate_player
scoreboard players add @a[gamemode=spectator,tag=!building,tag=!in_tutorial,team=!wyr] spectator 1


execute as @a[tag=playing,gamemode=adventure,advancements={minecraft:invisible/inventory_change=true}] at @s as @a[gamemode=spectator,distance=..1.5] at @s run function game:copy_inventory
advancement revoke @a[tag=playing,gamemode=adventure,advancements={minecraft:invisible/inventory_change=true}] only minecraft:invisible/inventory_change


execute if entity @a[tag=!playing,gamemode=spectator] run function game:spectator/possible_trigger