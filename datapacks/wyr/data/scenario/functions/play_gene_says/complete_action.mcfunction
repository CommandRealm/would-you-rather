tag @s add pgs_completed_action
execute if score $says pgs_timer matches 1 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.9
execute if score $says pgs_timer matches 0 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute if score $says pgs_timer matches 1 run tellraw @s {"text":"Action completed!","color":"green","italic":true}
execute if score $says pgs_timer matches 0 run tellraw @s {"text":"Incorrect action completed!","color":"red","italic":true}
item replace entity @s armor.chest with leather_chestplate
clear @s
kill @e[type=item,x=27000,y=66,z=0,distance=..1000,nbt={Item:{id:"minecraft:poisonous_potato"}}]