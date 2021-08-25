##scoreboard objectives add awd_sel_time dummy
##scoreboard objectives add awd_fail dummy
##scoreboard objectives add awd_companions dummy
##scoreboard objectives add awd_spectate dummy
##scoreboard objectives add awd_in_scenario dummy
##scoreboard objectives add awd_hold_item dummy

scoreboard players add @a[tag=playing,gamemode=spectator,tag=!in_tutorial] awd_spectate 1
scoreboard players add @a[tag=playing,gamemode=!spectator] awd_in_scenario 1
scoreboard players add @a[tag=playing,gamemode=!spectator,nbt={SelectedItem:{}}] awd_hold_item 1
