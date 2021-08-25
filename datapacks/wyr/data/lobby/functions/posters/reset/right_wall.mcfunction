tp @s ~ ~-1 ~
execute store result score $y_level item_frame_id run data get entity @s Pos[1] 2
execute as @e[type=area_effect_cloud,tag=set_poster_scores] at @s if score $y_level item_frame_id matches ..190 run tp @s ~ 111 ~-1

scoreboard players add $number item_frame_id 1
execute as @e[type=item_frame,distance=..1,sort=nearest,limit=1,scores={item_frame_id=0}] at @s run scoreboard players operation @s item_frame_id = $number item_frame_id
execute if score $number item_frame_id matches ..143 run schedule function lobby:posters/reset/call_right_wall 1t
particle crit ~ ~ ~ 