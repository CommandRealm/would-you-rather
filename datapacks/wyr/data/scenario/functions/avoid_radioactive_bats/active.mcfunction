#timer:
scoreboard players remove $time arb_timer 1
scoreboard players operation : arb_timer = $time arb_timer
scoreboard players operation : arb_timer /= $20 number
scoreboard players add : arb_timer 1
execute unless score : arb_timer = : arb_seconds run scoreboard players operation : arb_seconds = : arb_timer





#activity:
execute if score $arb active_scenario matches 1 if score $time arb_timer matches 1.. run schedule function scenario:avoid_radioactive_bats/active 1t
execute if score $arb active_scenario matches 1 unless entity @a[team=arb] run function scenario:avoid_radioactive_bats/end


execute as @e[type=bat,tag=arb_bat] at @s run function scenario:avoid_radioactive_bats/laser

execute as @e[type=bat,tag=arb_bat] at @s at @s[y=82,distance=..10] run tp @s ~ 71 ~

execute as @a[tag=playing,team=arb,gamemode=adventure] at @s at @s[y=40,distance=..10] run function scenario:avoid_radioactive_bats/fail
execute if score $time arb_timer matches 0 as @a[tag=playing,team=arb,gamemode=adventure] at @s run function scenario:avoid_radioactive_bats/success

execute as @a[tag=playing,team=arb,gamemode=adventure] at @s run particle crit ~ 50 ~ 3 0 3 0 5 force @s

execute as @a[tag=playing,team=arb,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run function scenario:avoid_radioactive_bats/get_boots