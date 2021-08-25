#timer:
scoreboard players add @a[tag=playing,team=ptp,gamemode=adventure] ptp_timer 1
execute if entity @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=0..40}] run function scenario:play_the_piano/look_at_piano_msg
execute if entity @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=41..999}] run function scenario:play_the_piano/play_notes

execute if entity @a[tag=playing,team=ptp,gamemode=adventure,scores={ptp_timer=1040..}] run function scenario:play_the_piano/repeat_notes


#activity:
execute if score $ptp active_scenario matches 1 run schedule function scenario:play_the_piano/active 1t
execute if score $ptp active_scenario matches 1 unless entity @a[team=ptp] run function scenario:play_the_piano/end