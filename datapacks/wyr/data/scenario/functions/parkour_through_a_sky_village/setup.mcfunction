clear @a[team=ptasv]
gamemode adventure @a[team=ptasv]

#kills:
tp @e[tag=ptasv_die] 0 0 0
kill @e[tag=ptasv_die]


##if scenario needs timer:
scoreboard objectives add ptasv_timer dummy
scoreboard objectives remove ptasv_seconds
scoreboard objectives add ptasv_seconds dummy {"text":"Time Remaining","color":"white","bold":true}

scoreboard objectives add ptasv_direction dummy
scoreboard objectives add ptasv_position dummy
scoreboard objectives add ptasv_delay dummy
scoreboard objectives remove ptasv_effect
scoreboard objectives remove ptasv_duration
scoreboard objectives add ptasv_effect dummy
scoreboard objectives add ptasv_duration dummy

summon area_effect_cloud 38000 65 11 {Duration:100000,Tags:["ptasv_die","ptasv_platform","ptasv_platform_1","ptasv_z"]}
summon area_effect_cloud 37994 86 40 {Duration:100000,Tags:["ptasv_die","ptasv_platform","ptasv_platform_2","ptasv_z"]}
summon area_effect_cloud 38016 93 -19 {Duration:100000,Tags:["ptasv_die","ptasv_platform","ptasv_platform_3","ptasv_z"]}

scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform] ptasv_direction 0
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform] ptasv_delay 40


##
execute if entity @a[team=ptasv,tag=tutorial] run schedule function scenario:parkour_through_a_sky_village/tutorial_setup 40t
execute unless entity @a[team=ptasv,tag=tutorial] run schedule function scenario:check_countdown 40t


fill 37999 66 4 38001 66 12 air replace minecraft:white_stained_glass
fill 37994 87 44 37994 87 36 air replace minecraft:white_stained_glass
fill 38026 94 -19 38006 94 -40 air replace minecraft:white_stained_glass
summon minecraft:area_effect_cloud 37994 104.5 -44 {Tags:["ptasv_die"],Duration:30000,CustomName:'[{"text":"F","color":"gold"},{"text":"I","color":"yellow"},{"text":"N","color":"gold"},{"text":"I","color":"gold"},{"text":"S","color":"yellow"},{"text":"H","color":"gold"}]',CustomNameVisible:1b}


##
summon minecraft:area_effect_cloud 37985 77.5 20 {Duration:100000,CustomNameVisible:1b,Tags:["ptasv_die"],CustomName:'[{"text":"JUMP BOOST","color":"green","bold":true}]'}
summon minecraft:area_effect_cloud 38014 95.5 16 {Duration:100000,CustomNameVisible:1b,Tags:["ptasv_die"],CustomName:'[{"text":"LEVITATION","color":"white","bold":true}]'}


fill 37996 81 18 37996 82 19 minecraft:oak_trapdoor[facing=east,half=bottom,open=true]
fill 37991 75 19 37990 82 18 minecraft:oak_trapdoor[facing=west,half=bottom,open=true] replace minecraft:oak_trapdoor
setblock 37994 71 19 oak_door[facing=west,half=lower,hinge=left,open=false]
setblock 37994 72 19 oak_door[facing=west,half=upper,hinge=left,open=false]

setblock 37994 71 18 oak_door[facing=west,half=lower,hinge=right,open=false]
setblock 37994 72 18 oak_door[facing=west,half=upper,hinge=right,open=false]

setblock 38005 73 24 oak_door[facing=east,half=lower,open=false,hinge=left]
setblock 38005 74 24 oak_door[facing=east,half=upper,open=false,hinge=left]

setblock 38009 85 24 minecraft:oak_trapdoor[facing=east,half=bottom,open=true]
setblock 38003 85 24 minecraft:oak_trapdoor[facing=west,half=bottom,open=true]

fill 38001 79 25 38001 81 23 minecraft:oak_trapdoor[facing=west,half=bottom,open=true] replace minecraft:oak_trapdoor

fill 38003 79 24 38004 79 24 minecraft:oak_trapdoor[facing=west,half=top,open=false]
fill 38003 81 24 38004 81 24 minecraft:oak_trapdoor[facing=west,half=bottom,open=false]
fill 38004 80 23 38003 80 23 minecraft:oak_trapdoor[facing=north,half=bottom,open=true]
fill 38004 80 25 38003 80 25 minecraft:oak_trapdoor[facing=south,half=bottom,open=true]

fill 38015 88 3 38013 89 1 minecraft:oak_trapdoor[half=top,open=false] replace minecraft:oak_trapdoor
fill 38015 90 4 38013 90 4 minecraft:oak_trapdoor[facing=south,half=bottom,open=true] replace minecraft:oak_trapdoor
fill 38015 90 0 38013 90 0 minecraft:oak_trapdoor[facing=north,half=bottom,open=true] replace minecraft:oak_trapdoor
fill 38012 90 3 38012 90 1 minecraft:oak_trapdoor[facing=west,half=bottom,open=true] replace minecraft:oak_trapdoor
fill 38016 90 3 38016 90 1 minecraft:oak_trapdoor[facing=east,half=bottom,open=true] replace minecraft:oak_trapdoor
setblock 38016 90 2 minecraft:spruce_trapdoor[facing=east,half=top,open=true]
setblock 38012 90 2 minecraft:spruce_trapdoor[facing=west,half=top,open=true]
setblock 38014 90 4 minecraft:spruce_trapdoor[facing=south,half=top,open=true]
setblock 38014 90 0 minecraft:spruce_trapdoor[facing=north,half=top,open=true]
##