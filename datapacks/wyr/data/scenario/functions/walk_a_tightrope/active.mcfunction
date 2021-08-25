#timer:
scoreboard players remove $time wat_timer 1
scoreboard players operation : wat_timer = $time wat_timer
scoreboard players operation : wat_timer /= $20 number
scoreboard players add : wat_timer 1
execute unless score : wat_timer = : wat_seconds run scoreboard players operation : wat_seconds = : wat_timer


execute if score $time wat_timer matches 0 run function scenario:walk_a_tightrope/timer_over

execute as @a[tag=playing,gamemode=adventure,team=wat] at @s at @s[y=63,distance=..24] unless entity @s[x=6947,y=86,z=23,distance=..7.5] run function scenario:walk_a_tightrope/fail
execute as @a[x=6959,y=90,z=43,dx=4,dz=4,dy=10,nbt={OnGround:1b},tag=playing,gamemode=adventure,team=wat] at @s run function scenario:walk_a_tightrope/success
#activity:
execute if score $wat active_scenario matches 1 if score $time wat_timer matches 1.. run schedule function scenario:walk_a_tightrope/active 1t
execute if score $wat active_scenario matches 1 unless entity @a[team=wat] run function scenario:walk_a_tightrope/end

execute as @a[team=wat,tag=playing,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run function scenario:walk_a_tightrope/get_boots