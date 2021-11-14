clear @a[team=saru]
gamemode adventure @a[team=saru,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=saru_die] 0 0 0
kill @e[tag=saru_die]


##if scenario needs timer:
scoreboard objectives add saru_timer dummy
scoreboard objectives remove saru_seconds
scoreboard objectives add saru_seconds dummy {"text":"Time Remaining","color":"dark_gray","bold":true}

scoreboard objectives add saru_lives dummy

scoreboard objectives add saru_explode dummy

team add saru_enemy
team modify saru_enemy friendlyFire false
team modify saru_enemy color red
##

execute if entity @a[team=saru,tag=tutorial] run schedule function scenario:stop_a_robot_uprising/tutorial_setup 40t
execute unless entity @a[team=saru,tag=tutorial] run schedule function scenario:check_countdown 40t
kill @e[type=item,x=29000,y=66,z=0,distance=..500]



fill 29016 71 1 29018 71 -1 oak_trapdoor[half=top]
setblock 29017 67 1 
setblock 29017 67 -1 minecraft:oak_trapdoor[open=true,facing=north]
setblock 29018 67 0 oak_door[facing=east,half=lower,hinge=left]
setblock 29018 68 0 oak_door[facing=east,half=upper,hinge=left]

fill 29022 67 -19 29012 67 9 minecraft:oak_trapdoor[open=true,facing=north] replace minecraft:oak_trapdoor[facing=north]
fill 29022 67 -19 29012 67 9 minecraft:oak_trapdoor[open=true,facing=west] replace minecraft:oak_trapdoor[facing=west]
fill 29022 67 -19 29012 67 9 minecraft:oak_trapdoor[open=true,facing=south] replace minecraft:oak_trapdoor[facing=south]
fill 29022 67 -19 29012 67 9 minecraft:oak_trapdoor[open=true,facing=east] replace minecraft:oak_trapdoor[facing=east]

setblock 29017 67 2 minecraft:oak_fence_gate

fill 29026 70 23 29026 70 24 minecraft:spruce_fence_gate[facing=east]

setblock 29043 70 32 redstone_lamp
setblock 29043 70 31 lever[face=wall,facing=north]


fill 29053 75 30 29046 75 35 minecraft:oak_trapdoor[open=true,facing=north] replace minecraft:oak_trapdoor[facing=north]
fill 29053 75 30 29046 75 35 minecraft:oak_trapdoor[open=true,facing=west] replace minecraft:oak_trapdoor[facing=west]
fill 29053 75 30 29046 75 35 minecraft:oak_trapdoor[open=true,facing=south] replace minecraft:oak_trapdoor[facing=south]
fill 29053 75 30 29046 75 35 minecraft:oak_trapdoor[open=true,facing=east] replace minecraft:oak_trapdoor[facing=east]