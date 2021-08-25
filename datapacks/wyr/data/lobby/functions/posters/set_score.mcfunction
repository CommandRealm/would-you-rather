scoreboard players add FalconReign item_frame_id 1
scoreboard players add @e[type=item_frame,distance=..5] item_frame_id 0
execute as @e[type=item_frame,sort=nearest,limit=1,scores={item_frame_id=0}] at @s run scoreboard players operation @s item_frame_id = FalconReign item_frame_id