#timer:
scoreboard players remove $time placeholder_timer 1
scoreboard players operation : placeholder_timer = $time placeholder_timer
scoreboard players operation : placeholder_timer /= $20 number
scoreboard players add : placeholder_timer 1
execute unless score : placeholder_timer = : placeholder_seconds run scoreboard players operation : placeholder_seconds = : placeholder_timer





#activity:
execute if score $placeholder active_scenario matches 1 if score $time placeholder_timer matches 1.. run schedule function scenario:placeholder/active 1t
execute if score $placeholder active_scenario matches 1 unless entity @a[team=placeholder] run function scenario:placeholder/end