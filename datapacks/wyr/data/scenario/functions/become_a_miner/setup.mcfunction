clear @a[team=bam]
gamemode adventure @a[team=bam,gamemode=!adventure,tag=playing]
fill 8833 133 -17 8831 160 -15 air
#clone 8991 45 -7 8993 53 -5 8997 88 -2

scoreboard objectives remove bam_seconds
scoreboard objectives add bam_seconds dummy {"text":"Time Remaining","color":"aqua","bold":true}

scoreboard objectives add bam_bar dummy
scoreboard objectives remove bam_break_d
scoreboard objectives add bam_break_d minecraft.mined:minecraft.diamond_ore


scoreboard objectives add bam_timer dummy

# Place diamonds
tag @e[tag=bam_spawn,type=marker] remove bam_diamond
execute as @e[tag=bam_spawn,type=marker] at @s run setblock ~ ~ ~ diamond_ore

execute as @e[tag=bam_spawn,type=marker] at @s if block ~ ~ ~ diamond_ore run tag @s add bam_diamond

tp @e[tag=bam_die] 0 -10000 0
kill @e[tag=bam_die]

# Elevator spawn
summon minecraft:armor_stand 8833 152.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 152.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 152.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8832 152.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8832 152.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8832 152.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 152.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 152.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 152.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:shulker",ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],NoAI:1b,Silent:1b,NoGravity:1b,Tags:["bam_elevator","bam_die"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

summon minecraft:armor_stand 8833 157.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 157.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 157.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8832 157.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8832 157.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die","bam_center"],Invisible:1b}
summon minecraft:armor_stand 8832 157.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 157.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 157.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 157.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_planks",Properties:{type:"bottom"}},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

summon minecraft:armor_stand 8832 158.5 -16 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spruce_fence"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

summon minecraft:armor_stand 8833 153.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 154.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 155.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 156.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

summon minecraft:armor_stand 8831 153.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 154.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 155.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 156.5 -15 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

summon minecraft:armor_stand 8831 153.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 154.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 155.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8831 156.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

summon minecraft:armor_stand 8833 153.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 154.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 155.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}
summon minecraft:armor_stand 8833 156.5 -17 {Invulnerable:1b,NoGravity:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_bars"},Time:-2147483648,Tags:["bam_elevator","bam_die"],NoGravity:1b}],Tags:["bam_elevator","bam_die"],Invisible:1b}

#fill 9008 67 22 9010 67 22 spruce_fence_gate[facing=north,open=false,in_wall=false]
#fill 9008 67 26 9010 67 26 spruce_fence_gate[facing=south,open=false,in_wall=false]
#setblock 9000 66 -1 spruce_fence_gate[facing=east,open=false]

execute if entity @a[team=bam,tag=tutorial] run schedule function scenario:become_a_miner/tutorial_setup 40t
execute unless entity @a[team=bam,tag=tutorial] run schedule function scenario:check_countdown 40t
scoreboard players set @a[tag=playing,team=bam] death 0


scoreboard objectives add bam_dummy dummy
scoreboard objectives remove bam_diamond
scoreboard objectives add bam_diamond dummy
scoreboard players set @a[team=bam] bam_diamond 0

execute as @a[team=bam] at @s run kill @e[type=item,distance=..200,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
#execute as @a[team=bam] at @s run kill @e[type=item,distance=..200,nbt={Item:{id:"minecraft:minecart"}}]
execute as @a[team=bam] at @s run kill @e[type=item,distance=..200,nbt={Item:{id:"minecraft:diamond"}}]

#execute as @a[team=bam] at @s run kill @e[tag=bam_minecart,distance=..200]
#summon minecraft:minecart 9012 67 24 {Tags:["die","bam_minecart"]}