clear @a[team=cms]
gamemode adventure @a[team=cms,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=cms_die] 0 0 0
kill @e[tag=cms_die]


##if scenario needs timer:
scoreboard objectives add cms_timer dummy
scoreboard objectives add cms_seconds dummy {"text":"Time Remaining","color":"#966f58","bold":true}

scoreboard objectives add cms_soups_left dummy

execute if entity @a[team=cms,tag=tutorial] run schedule function scenario:cook_mushroom_soups/tutorial_setup 40t
execute unless entity @a[team=cms,tag=tutorial] run schedule function scenario:check_countdown 40t



summon minecraft:villager 38996 66 6 {Invulnerable:1b,Rotation:[180f,0f],Tags:["cms_die","cms_customer","cms_first_customer"]}
summon minecraft:villager 38996 66 7 {Invulnerable:1b,Rotation:[180f,0f],Tags:["cms_die","cms_customer"]}
summon minecraft:villager 38996 66 8 {Invulnerable:1b,Rotation:[180f,0f],Tags:["cms_die","cms_customer"]}
effect give @e[type=villager,tag=cms_customer] slowness 100000 255 true

summon item 39027 67 -12 {Age:-18510,PickupDelay:100000,Item:{id:"minecraft:red_mushroom",Count:1b},Tags:["cms_die","cms_mushroom_item"]}
summon item 39030 70 25 {Age:-18510,PickupDelay:100000,Item:{id:"minecraft:brown_mushroom",Count:1b},Tags:["cms_die","cms_mushroom_item"]}
summon item 38975 68 22 {Age:-18510,PickupDelay:100000,Item:{id:"minecraft:crimson_fungus",Count:1b},Tags:["cms_die","cms_mushroom_item"]}
summon item 38984 67 -26 {Age:-18510,PickupDelay:100000,Item:{id:"minecraft:warped_fungus",Count:1b},Tags:["cms_die","cms_mushroom_item"]}
##


fill 38995 69 6 38997 69 6 minecraft:spruce_trapdoor[facing=north,half=top,open=false] replace minecraft:spruce_trapdoor

fill 38995 71 6 38997 71 6 minecraft:spruce_trapdoor[facing=north,half=bottom,open=false] replace minecraft:spruce_trapdoor

fill 38997 70 5 38995 70 5 minecraft:spruce_trapdoor[facing=north,half=top,open=true] replace minecraft:spruce_trapdoor

fill 38997 70 7 38995 70 7 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true] replace minecraft:spruce_trapdoor




fill 38966 70 -14 39034 73 42 minecraft:birch_trapdoor[facing=east,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=east]
fill 38966 70 -14 39034 73 42 minecraft:birch_trapdoor[facing=west,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=west]
fill 38966 70 -14 39034 73 42 minecraft:birch_trapdoor[facing=north,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=north]
fill 38966 70 -14 39034 73 42 minecraft:birch_trapdoor[facing=south,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=south]


fill 38985 83 38 38987 83 40 minecraft:birch_trapdoor[facing=east,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=east]
fill 38985 83 38 38987 83 40 minecraft:birch_trapdoor[facing=west,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=west]
fill 38985 83 38 38987 83 40 minecraft:birch_trapdoor[facing=north,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=north]
fill 38985 83 38 38987 83 40 minecraft:birch_trapdoor[facing=south,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=south]



fill 39009 70 -8 39036 83 -22 minecraft:birch_trapdoor[facing=east,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=east]
fill 39009 70 -8 39036 83 -22 minecraft:birch_trapdoor[facing=west,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=west]
fill 39009 70 -8 39036 83 -22 minecraft:birch_trapdoor[facing=north,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=north]
fill 39009 70 -8 39036 83 -22 minecraft:birch_trapdoor[facing=south,half=bottom,open=false] replace minecraft:birch_trapdoor[facing=south]

setblock 39009 66 -24 jungle_door[half=lower,facing=north,hinge=left,open=true] destroy
setblock 39009 67 -24 jungle_door[half=upper,facing=north,hinge=left,open=true] destroy

setblock 39010 66 -24 jungle_door[half=lower,facing=north,hinge=right,open=true] destroy
setblock 39010 67 -24 jungle_door[half=upper,facing=north,hinge=right,open=true] destroy


setblock 39010 76 -29 minecraft:spruce_trapdoor[facing=south,half=top,open=true]
fill 39010 75 -25 39007 75 -25 minecraft:spruce_trapdoor[facing=east,half=top,open=false]

fill 38999 65 -3 39001 65 -3 oak_fence_gate[facing=north,open=false,powered=false] replace minecraft:oak_fence_gate