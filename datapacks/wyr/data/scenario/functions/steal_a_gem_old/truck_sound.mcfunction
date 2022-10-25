
scoreboard players set $mod random 4
function random:random
execute if score $rand random matches 0 run scoreboard players remove $truck rab_old_timer 1
scoreboard players set $mod random 5
function random:random
execute if score $truck rab_old_timer matches 3 if score $rand random matches 0 run playsound minecraft:entity.minecart.riding master @a 15931 71 -32 0.25 1.5 
execute if score $truck rab_old_timer matches 3 if score $rand random matches 1 run playsound minecraft:entity.minecart.riding master @a 15931 71 -32 0.25 1.45 
execute if score $truck rab_old_timer matches 3 if score $rand random matches 2 run playsound minecraft:entity.minecart.riding master @a 15931 71 -32 0.25 1.3 
execute if score $truck rab_old_timer matches 3 if score $rand random matches 3 run playsound minecraft:entity.minecart.riding master @a 15931 71 -32 0.25 1.2 
execute if score $truck rab_old_timer matches 3 if score $rand random matches 4 run playsound minecraft:entity.minecart.riding master @a 15931 71 -32 0.25 1.0 
scoreboard players set $truck rab_old_timer 0