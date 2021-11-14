#timer:
scoreboard players remove $time npab_timer 1
scoreboard players operation : npab_timer = $time npab_timer
scoreboard players operation : npab_timer /= $20 number
scoreboard players add : npab_timer 1
execute unless score : npab_timer = : npab_seconds run scoreboard players operation : npab_seconds = : npab_timer

# button sound
scoreboard players operation $tick npab_timer = $time npab_timer
scoreboard players operation $tick npab_timer %= $20 number
execute if score $tick npab_timer matches 10 as @a[tag=playing,team=npab] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.5
execute if score $tick npab_timer matches 0 as @a[tag=playing,team=npab] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.67

# if player presses button
execute if block 6000 69 -1 polished_blackstone_button[powered=true] run function scenario:not_push_a_button/press_button

# if button has been pressed
execute if score $button npab_timer matches 1.. run function scenario:not_push_a_button/button_active


# when timer hits 0
execute unless score $button npab_timer matches 1.. if score $time npab_timer matches 0 as @a[tag=playing,team=npab,gamemode=adventure] at @s run function scenario:not_push_a_button/success

#activity:
execute if score $npab active_scenario matches 1 if score $time npab_timer matches -100.. run schedule function scenario:not_push_a_button/active 1t
execute if score $npab active_scenario matches 1 unless entity @a[team=npab] run function scenario:not_push_a_button/end

effect give @a[team=npab] resistance 1 255 true