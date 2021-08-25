execute if score $time showstart matches 3000 run effect give @a[tag=playing] blindness 1 255 true
execute if score $time showstart matches 3000 run tp @a[tag=playing] -931 24 -17 230 0
execute if score $time showstart matches 3000 run scoreboard players set $number check_gene 1
execute if score $time showstart matches 3009 run function show:reset_tv
execute if score $time showstart matches 3000 if score $criteria round matches 1.. run scoreboard objectives setdisplay sidebar points

execute if score $time showstart matches 3000 run function show:join_selector
execute if score $time showstart matches 3000 as @a[tag=playing] at @s run function show:display_status




execute if score $time showstart matches 3010 run function show:setup_podium
execute if score $time showstart matches 3020 run function show:podium
execute if score $time showstart matches 3020 if entity @a[tag=playing,scores={adjust_points=1..}] run scoreboard players set $clap clap 60
execute if score $time showstart matches 3030 as @r[tag=playing,scores={fans=1..},tag=!mute_own_fan] at @s run function fans:speak
execute if score $time showstart matches 3040 unless score $criteria round matches 0 unless entity @a[tag=success,tag=playing] unless entity @a[tag=playing,scores={adjust_points=1..}] run scoreboard players set $time showstart 740
execute if score $time showstart matches 3040 if score $criteria round matches 0 unless entity @a[tag=success,tag=playing] unless entity @a[tag=playing,scores={adjust_points=1..}] run scoreboard players set $time showstart 3160



execute if score $time showstart matches 3040

execute if score $time showstart matches 3050 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3060 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3070 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3080 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3090 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3100 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3110 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3120 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3130 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3140 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3150 as @a[tag=playing,scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 3160 if score $criteria round matches 1.. run scoreboard players set $time showstart 740
execute if score $time showstart matches 3160 if score $criteria round matches 0 if score $number awards matches 0 run scoreboard players set $time showstart 5999
execute if score $time showstart matches 3160 if score $criteria round matches 0 if score $number awards matches 1 run scoreboard players set $time showstart 6999