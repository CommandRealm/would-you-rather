summon creeper 15945 64 0 {Fuse:0s,CustomName:'[{"text":"Explosive","color":"red"}]'}
fill 15945 63 -1 15945 64 1 air
setblock 15945 65 0 air
setblock 15945 65 1 air
fill 15946 63 -1 15946 64 0 air
setblock 15946 63 1 air
fill 15945 62 0 15944 62 1 air
setblock 15945 62 0 smooth_stone_slab
setblock 15946 64 -1 smooth_stone_slab[type=top]
fill 15945 66 1 15944 66 1 air
setblock 15944 65 2 air
setblock 15946 65 0 air
setblock 15946 64 1 stone_button[face=ceiling,powered=true]
setblock 15946 63 -1 minecraft:stone_pressure_plate[powered=true]
setblock 15946 62 1 smooth_stone_slab
setblock 15947 62 0 andesite_slab
scoreboard players set $time rab_bar 300