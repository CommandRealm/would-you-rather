execute if entity @s[scores={c_cooldown=0}] if entity @s[team=select] run tellraw @s {"text":"You can't cheer for yourself.","color":"red"}
execute if entity @s[scores={c_cooldown=0}] unless entity @s[team=select] if score $scenario active matches 0 run tellraw @s {"text":"You cannot cheer now. Please wait until you are in a scenario","color":"red"}
execute unless entity @s[scores={c_cooldown=0}] run tellraw @s {"text":"You cannot cheer now.","color":"red"}
execute unless entity @s[scores={c_cooldown=0}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.65
execute if entity @s[team=select] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.65
execute if score $scenario active matches 0 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.65
scoreboard players enable @s c_cheer
execute if entity @s[scores={c_cooldown=0}] unless entity @s[team=select] if score $scenario active matches 1 run function game:cheering
scoreboard players set @s c_cheer 0
scoreboard players set @s[scores={c_cooldown=0}] c_cooldown 200