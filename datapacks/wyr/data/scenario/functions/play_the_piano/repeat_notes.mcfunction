execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1040}] at @s run function scenario:play_the_piano/start_repeat_msg

execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1040..1340,ptp_drop=1..}] at @s run function scenario:play_the_piano/repeat_note

execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1040..1340}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:filled_map",tag:{ptp_paper:1}},{Slot:1b,id:"minecraft:filled_map",tag:{ptp_paper:2}},{Slot:2b,id:"minecraft:filled_map",tag:{ptp_paper:3}},{Slot:3b,id:"minecraft:filled_map",tag:{ptp_paper:4}},{Slot:4b,id:"minecraft:filled_map",tag:{ptp_paper:5}},{Slot:5b,id:"minecraft:filled_map",tag:{ptp_paper:6}},{Slot:6b,id:"minecraft:filled_map",tag:{ptp_paper:7}},{Slot:7b,id:"minecraft:filled_map",tag:{ptp_paper:8}},{Slot:8b,id:"minecraft:ghast_tear"}]}] run function scenario:play_the_piano/get_papers







execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1340}] at @s run function scenario:play_the_piano/failed_to_play_note




execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1400}] at @s unless score @s ptp_shown = @s ptp_played run scoreboard players set @s ptp_timer 1040
execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1440}] at @s run function scenario:play_the_piano/repeated_notes_correctly

execute as @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1540}] at @s run function scenario:play_the_piano/repeated_notes_incorrectly