scoreboard players set @e[type=item_frame,x=-914,y=102,z=-124,distance=..10] item_frame_id 0
scoreboard players set $number item_frame_id 0
summon area_effect_cloud -914 110.5 -128 {Duration:144,Tags:["set_poster_scores"]}
execute as @e[type=area_effect_cloud,tag=set_poster_scores] at @s run function lobby:posters/reset/left_wall