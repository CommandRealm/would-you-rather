#called from pregame:main
#purpose it to detect right clicks and ready players up

clear @s knowledge_book
scoreboard players set @s joinsong -100
scoreboard players add @s ready 1 
scoreboard players set @s[scores={ready=2..}] ready 0
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 0.06 1.25
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 2 1
scoreboard players set @s rc 0