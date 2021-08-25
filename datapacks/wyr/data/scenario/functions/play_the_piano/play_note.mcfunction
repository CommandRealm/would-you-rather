scoreboard players add @s ptp_shown 1
execute if entity @s[scores={ptp_shown=1}] run scoreboard players operation $play ptp_code = $1 ptp_code
execute if entity @s[scores={ptp_shown=2}] run scoreboard players operation $play ptp_code = $2 ptp_code
execute if entity @s[scores={ptp_shown=3}] run scoreboard players operation $play ptp_code = $3 ptp_code
execute if entity @s[scores={ptp_shown=4}] run scoreboard players operation $play ptp_code = $4 ptp_code
execute if entity @s[scores={ptp_shown=5}] run scoreboard players operation $play ptp_code = $5 ptp_code
execute if entity @s[scores={ptp_shown=6}] run scoreboard players operation $play ptp_code = $6 ptp_code
execute if entity @s[scores={ptp_shown=7}] run scoreboard players operation $play ptp_code = $7 ptp_code
execute if entity @s[scores={ptp_shown=8}] run scoreboard players operation $play ptp_code = $8 ptp_code

##sound
execute if score $play ptp_code matches 0 run playsound minecraft:block.note_block.harp master @s 33014 68 2 100 0.707107
execute if score $play ptp_code matches 1 run playsound minecraft:block.note_block.harp master @s 33015 68 2 100 0.793701
execute if score $play ptp_code matches 2 run playsound minecraft:block.note_block.harp master @s 33016 68 2 100 0.890899
execute if score $play ptp_code matches 3 run playsound minecraft:block.note_block.harp master @s 33017 68 2 100 0.943874
execute if score $play ptp_code matches 4 run playsound minecraft:block.note_block.harp master @s 33018 68 2 100 1.059463
execute if score $play ptp_code matches 5 run playsound minecraft:block.note_block.harp master @s 33019 68 2 100 1.189207
execute if score $play ptp_code matches 6 run playsound minecraft:block.note_block.harp master @s 33020 68 2 100 1.334840
execute if score $play ptp_code matches 7 run playsound minecraft:block.note_block.harp master @s 33021 68 2 100 1.414214


##particle


execute if score $play ptp_code matches 0 run particle note 33014 68.75 2 0.25 0 0 1 0 force @s

execute if score $play ptp_code matches 1 run particle note 33015 68.75 2 0.175 0 0 1 0 force @s

execute if score $play ptp_code matches 2 run particle note 33016 68.75 2 0.1 0 0 1 0 force @s

execute if score $play ptp_code matches 3 run particle note 33017 68.75 2 0 0 0 1 0 force @s

execute if score $play ptp_code matches 4 run particle note 33018 68.75 2 0.5416666 0 0 1.35 0 force @s

execute if score $play ptp_code matches 5 run particle note 33019 68.75 2 0.75 0 0 0.75 0 force @s

execute if score $play ptp_code matches 6 run particle note 33020 68.75 2 0.9 0 0 0.45 0 force @s

execute if score $play ptp_code matches 7 run particle note 33021 68.75 2 0.65 0 0 0.75 0 force @s

execute unless score @s ptp_shown = @s ptp_code run scoreboard players set @s ptp_timer 41
execute if score @s ptp_shown = @s ptp_code run scoreboard players set @s ptp_timer 1000