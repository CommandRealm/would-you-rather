kill @e[tag=rab_elevator]
summon area_effect_cloud 15927 62 -1 {Duration:10000,Tags:["infinite","rab_elevator","rab_up"]}
scoreboard players set $time rab_elevator 500
clone 15920 74 -1 15920 76 1 15927 70 -1
tag @e remove rab_on_ele
tag @e[x=15922,y=62,z=-2,dx=5,dz=4,dy=5,type=!area_effect_cloud] add rab_on_ele

setblock 15926 71 2 stone_button[face=wall,facing=west,powered=false]
setblock 15928 71 2 stone_button[face=wall,facing=east,powered=false]

setblock 15926 63 2 stone_button[face=wall,facing=west,powered=false]
setblock 15928 63 2 stone_button[face=wall,facing=east,powered=false]