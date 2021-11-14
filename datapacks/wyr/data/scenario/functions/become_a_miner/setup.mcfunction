clear @a[team=bam]
gamemode adventure @a[team=bam,gamemode=!adventure,tag=playing]
fill 8997 65 -2 8999 96 0 air
clone 8991 45 -7 8993 53 -5 8997 88 -2

scoreboard objectives remove bam_seconds
scoreboard objectives add bam_seconds dummy {"text":"Time Remaining","color":"aqua","bold":true}

scoreboard objectives add bam_bar dummy
scoreboard objectives remove bam_break_d
scoreboard objectives add bam_break_d minecraft.mined:minecraft.diamond_ore


scoreboard objectives add bam_timer dummy

tag @e[tag=bam_spawn,type=area_effect_cloud] remove bam_diamond
execute as @e[tag=bam_spawn,type=area_effect_cloud] at @s run setblock ~ ~ ~ diamond_ore

execute as @e[tag=bam_spawn,type=area_effect_cloud] at @s if block ~ ~ ~ diamond_ore run tag @s add bam_diamond




fill 9008 67 22 9010 67 22 spruce_fence_gate[facing=north,open=false,in_wall=false]
fill 9008 67 26 9010 67 26 spruce_fence_gate[facing=south,open=false,in_wall=false]
setblock 9000 66 -1 spruce_fence_gate[facing=east,open=false]

execute if entity @a[team=bam,tag=tutorial] run schedule function scenario:become_a_miner/tutorial_setup 40t
execute unless entity @a[team=bam,tag=tutorial] run schedule function scenario:check_countdown 40t
scoreboard players set @a[tag=playing,team=bam] death 0
kill @e[type=area_effect_cloud,tag=bam_shaft]
summon area_effect_cloud 8997 88 -2 {Duration:100000,Tags:["infinite","bam_shaft"]}
kill @e[type=area_effect_cloud,tag=bam_platform]


fill 9001 70 -3 9001 86 1 dark_oak_trapdoor[facing=east,open=true,half=bottom] replace minecraft:dark_oak_trapdoor
fill 9000 70 2 8996 86 2 dark_oak_trapdoor[facing=south,open=true,half=bottom] replace minecraft:dark_oak_trapdoor
fill 9000 66 -4 8996 82 -4 dark_oak_trapdoor[facing=north,open=true,half=bottom] replace minecraft:dark_oak_trapdoor
fill 8995 70 1 8995 82 -3 dark_oak_trapdoor[facing=west,open=true,half=bottom] replace minecraft:dark_oak_trapdoor
setblock 9006 66 -12 oak_door[facing=south,hinge=right]
fill 9012 71 21 9006 71 21 dark_oak_trapdoor[facing=north,open=true,half=bottom] replace minecraft:dark_oak_trapdoor
setblock 9006 71 23 dark_oak_trapdoor[open=true,facing=south,half=bottom]
setblock 9006 70 25 dark_oak_trapdoor[open=true,facing=north,half=bottom]
fill 9020 76 8 9020 76 -4 dark_oak_trapdoor[open=true,facing=west,half=bottom] replace minecraft:dark_oak_trapdoor
fill 9022 76 8 9022 76 -4 dark_oak_trapdoor[open=true,facing=east,half=bottom] replace minecraft:dark_oak_trapdoor
setblock 9023 84 25 dark_oak_trapdoor[half=bottom,open=true,facing=south]



scoreboard objectives add bam_dummy dummy
scoreboard objectives remove bam_diamond
scoreboard objectives add bam_diamond dummy
scoreboard players add @a[team=bam] bam_diamond 0

execute as @a[team=bam] at @s run kill @e[type=item,distance=..200,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
execute as @a[team=bam] at @s run kill @e[type=item,distance=..200,nbt={Item:{id:"minecraft:minecart"}}]
execute as @a[team=bam] at @s run kill @e[type=item,distance=..200,nbt={Item:{id:"minecraft:diamond"}}]

execute as @a[team=bam] at @s run kill @e[tag=bam_minecart,distance=..200]
summon minecraft:minecart 9012 67 24 {Tags:["die","bam_minecart"]}