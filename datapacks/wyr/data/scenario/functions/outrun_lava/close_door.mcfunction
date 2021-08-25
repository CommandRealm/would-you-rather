execute if score $time ol_timer matches 170 run setblock 24001 75 -150 minecraft:iron_block
execute if score $time ol_timer matches 170 run setblock 23999 75 -150 minecraft:iron_block
execute if score $time ol_timer matches 170 run playsound minecraft:block.iron_door.close master @a 24000 75 -150 10 0
execute if score $time ol_timer matches 160 run fill 24001 74 -150 24001 76 -150 minecraft:smooth_quartz_stairs[facing=east] replace structure_void
execute if score $time ol_timer matches 160 run fill 23999 74 -150 23999 76 -150 minecraft:smooth_quartz_stairs[facing=west,half=top] replace structure_void
execute if score $time ol_timer matches 160 run playsound minecraft:block.iron_door.close master @a 24000 75 -150 10 0.65
execute if score $time ol_timer matches 150 run fill 24001 74 -150 23999 76 -150 iron_block
execute if score $time ol_timer matches 150 run fill 24000 74 -150 24000 76 -150 minecraft:smooth_quartz
execute if score $time ol_timer matches 150 run setblock 24000 75 -150 minecraft:chiseled_quartz_block
execute if score $time ol_timer matches 150 run playsound minecraft:block.iron_door.close master @a 24000 75 -150 10 0.75
execute if score $time ol_timer matches 150 run playsound minecraft:block.iron_door.close master @a 24000 75 -150 10 0.0
execute if score $time ol_timer matches 150 run playsound minecraft:block.piston.contract master @a 24000 75 -150 10 0
## 