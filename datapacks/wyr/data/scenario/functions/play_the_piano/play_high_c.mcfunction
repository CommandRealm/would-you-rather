scoreboard players reset @s ptp_drop

scoreboard players add @s ptp_played 1
scoreboard players set @s ptp_timer 1500


execute if entity @s[scores={ptp_played=1}] if score $1 ptp_code matches 7 run scoreboard players set @s ptp_timer 1400
execute if entity @s[scores={ptp_played=2}] if score $2 ptp_code matches 7 run scoreboard players set @s ptp_timer 1400
execute if entity @s[scores={ptp_played=3}] if score $3 ptp_code matches 7 run scoreboard players set @s ptp_timer 1400
execute if entity @s[scores={ptp_played=4}] if score $4 ptp_code matches 7 run scoreboard players set @s ptp_timer 1400
execute if entity @s[scores={ptp_played=5}] if score $5 ptp_code matches 7 run scoreboard players set @s ptp_timer 1400
execute if entity @s[scores={ptp_played=6}] if score $6 ptp_code matches 7 run scoreboard players set @s ptp_timer 1400



playsound minecraft:block.note_block.harp master @s 33021 68 2 100 1.414214
particle note 33021 68.75 2 0.65 0 0 0.75 0 force @s

playsound minecraft:block.note_block.harp master @a[gamemode=spectator,dx=0] 33021 68 2 100 1.414214
particle note 33021 68.75 2 0.65 0 0 0.75 0 force @a[gamemode=spectator,dx=0] 