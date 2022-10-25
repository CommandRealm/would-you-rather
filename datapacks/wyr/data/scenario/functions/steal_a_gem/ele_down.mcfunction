kill @e[tag=rab_elevator]
summon area_effect_cloud 15927 70 -382 {Duration:10000,Tags:["infinite","rab_elevator","rab_down"]}
scoreboard players set $time rab_elevator 500
clone 15920 74 -382 15920 76 -380 15927 62 -382
tag @e remove rab_on_ele
tag @e[x=15922,y=70,z=-383,dx=5,dz=4,dy=5,type=!area_effect_cloud] add rab_on_ele

setblock 15926 71 -379 stone_button[face=wall,facing=west,powered=false]
setblock 15928 71 -379 stone_button[face=wall,facing=east,powered=false]

setblock 15926 63 -379 stone_button[face=wall,facing=west,powered=false]
setblock 15928 63 -379 stone_button[face=wall,facing=east,powered=false]