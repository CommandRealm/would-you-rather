##scoreboard objectives add awd_sel_time dummy
##scoreboard objectives add awd_fail dummy
##scoreboard objectives add awd_companions dummy
##scoreboard objectives add awd_spectate dummy
##scoreboard objectives add awd_in_scenario dummy
##scoreboard objectives add awd_hold_item dummy

scoreboard players add @a[tag=playing,gamemode=spectator,tag=!in_tutorial] awd_spectate 1
scoreboard players add @a[tag=playing,gamemode=!spectator] awd_in_scenario 1
scoreboard players add @a[tag=playing,gamemode=!spectator,nbt={SelectedItem:{}}] awd_hold_item 1

execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~ ~ water run scoreboard players add @s awd_water 1
execute as @a[tag=playing,gamemode=adventure] at @s unless data entity @s {Fire:-20s} run scoreboard players add @s awd_fire 1
execute as @a[tag=playing,gamemode=adventure] at @s unless data entity @s Inventory[{Slot:100b}] run tag @s add temporary_tag
execute as @a[tag=playing,gamemode=adventure] at @s unless data entity @s Inventory[{Slot:101b}] run tag @s add temporary_tag
execute as @a[tag=playing,gamemode=adventure] at @s unless data entity @s Inventory[{Slot:102b}] run tag @s add temporary_tag
execute as @a[tag=playing,gamemode=adventure] at @s unless data entity @s Inventory[{Slot:103b}] run tag @s add temporary_tag
scoreboard players add @a[tag=playing,tag=temporary_tag] awd_armor 1
tag @a remove temporary_tag
