#timer:
scoreboard players remove $time gf_timer 1
scoreboard players operation : gf_timer = $time gf_timer
scoreboard players operation : gf_timer /= $20 number
scoreboard players add : gf_timer 1
execute unless score : gf_timer = : gf_seconds run scoreboard players operation : gf_seconds = : gf_timer


execute as @a[tag=playing,gamemode=adventure,team=gf] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:fishing_rod"}]}] run function scenario:go_fishing/get_fishing_rod

#activity:
execute if score $gf active_scenario matches 1 if score $time gf_timer matches 1.. run schedule function scenario:go_fishing/active 1t
execute if score $gf active_scenario matches 1 unless entity @a[team=gf] run function scenario:go_fishing/end


execute as @a[tag=playing,team=gf,gamemode=adventure,scores={gf_item=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,tag:{fishing_item:1}}]}] run function scenario:go_fishing/get_item

xp set @a[tag=playing,gamemode=adventure,team=gf] 0 levels
xp set @a[tag=playing,gamemode=adventure,team=gf] 0 points
execute as @a[tag=playing,team=gf,gamemode=adventure] at @s unless entity @s[x=34979,z=-14,dz=34,dx=32] run function scenario:go_fishing/out_of_bounds

execute as @a[tag=playing,team=gf,gamemode=adventure] at @s run title @s actionbar [{"text":"Goal: ","color":"aqua","bold":false},{"text":"[","color":"blue","bold":false},{"score":{"objective":"gf_points","name":"@s"},"color":"yellow","bold":true},{"text":"/","color":"blue","bold":false},{"text":"30","color":"yellow","bold":true},{"text":"]","color":"blue","bold":false}]
execute as @a[tag=playing,team=gf,gamemode=adventure,scores={gf_points=30..}] at @s run function scenario:go_fishing/success
execute if score $time gf_timer matches 0 run function scenario:go_fishing/timer_over

execute as @a[tag=playing,team=gf,gamemode=adventure,scores={gf_fish=1..}] at @s run function scenario:go_fishing/catch

scoreboard objectives add gf_item dummy