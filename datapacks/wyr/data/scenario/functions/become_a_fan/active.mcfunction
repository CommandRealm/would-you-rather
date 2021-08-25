execute if score $time bafe_timer matches 481.. run effect give @a[tag=playing,team=bafe,gamemode=adventure] minecraft:levitation 1 255 true
execute if score $time bafe_timer matches 460 run effect give @a[tag=playing,team=bafe,gamemode=adventure] minecraft:levitation 2 2 true
execute if score $time bafe_timer matches 450 run effect give @a[tag=playing,team=bafe,gamemode=adventure] minecraft:levitation 2 4 true
execute if score $time bafe_timer matches 440 run effect give @a[tag=playing,team=bafe,gamemode=adventure] minecraft:levitation 2 5 true
execute if score $time bafe_timer matches 430 run effect give @a[tag=playing,team=bafe,gamemode=adventure] minecraft:levitation 2 7 true
execute if score $time bafe_timer matches 420 run effect give @a[tag=playing,team=bafe,gamemode=adventure] minecraft:levitation 16 9 true
execute if score $time bafe_timer matches 470.. run title @a[team=bafe] subtitle [{"text":"⚠ ","color":"gray"},{"text":"Look up!","color":"white"},{"text":" ⚠","color":"gray"}]
execute if score $time bafe_timer matches 469 run title @a[team=bafe] subtitle [{"text":" "}]

scoreboard players remove $time bafe_timer 1
scoreboard players operation : bafe_timer = $time bafe_timer
scoreboard players operation : bafe_timer /= $20 number
scoreboard players remove : bafe_timer 4
execute unless score : bafe_timer = : bafe_seconds run scoreboard players operation : bafe_seconds = : bafe_timer

execute if score : bafe_seconds matches 0 if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if score : bafe_seconds matches 0 if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow

execute if score $bafe active_scenario matches 1 if score $time bafe_timer matches 1.. run schedule function scenario:become_a_fan/active 1t
execute if score $bafe active_scenario matches 1 unless entity @a[team=bafe] run function scenario:become_a_fan/end

execute if score $time bafe_timer matches 100..460 run fill 11991 49 12 12013 49 -10 air replace minecraft:smooth_stone_slab
execute if score $time bafe_timer matches 450..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~2 0
execute if score $time bafe_timer matches 440..449 as @e[tag=fan_blade,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~5 0
execute if score $time bafe_timer matches 430..439 as @e[tag=fan_blade,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~9 0
execute if score $time bafe_timer matches 420..429 as @e[tag=fan_blade,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~11 0
execute if score $time bafe_timer matches 100..419 as @e[tag=fan_blade,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~13 0
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^ ^ ^ ^ iron_block
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^1 ^1 ^ ^1 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^2 ^1 ^ ^2 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^3 ^1 ^ ^3 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^4 ^1 ^ ^4 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^5 ^1 ^ ^5 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^6 ^1 ^ ^6 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^7 ^1 ^ ^7 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^8 ^1 ^ ^8 minecraft:smooth_stone_slab replace air
execute if score $time bafe_timer matches 100..460 as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^9 ^1 ^ ^9 minecraft:smooth_stone_slab replace air


execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=10,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 1.25 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=40,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 1.05 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=70,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 0.85 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=100,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 0.65 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=130,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 0.55 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=160,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 0.45 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=190,distance=..15] run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 0.35 0
execute if score $time bafe_timer matches 100..460 as @a[tag=playing,team=bafe,gamemode=adventure] at @s run particle minecraft:cloud ~ ~2 ~ 1 1 1 0.25 1
execute if score $time bafe_timer matches 100..460 run particle minecraft:cloud 12002 58 1 5 5 5 0.25 20


execute if score $time bafe_timer matches 100 run stopsound @a[tag=playing,team=bafe,gamemode=adventure]
execute if score $time bafe_timer matches 100 as @a[team=bafe,tag=playing,gamemode=adventure] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 12000000 0.75
execute if score $time bafe_timer matches 100 as @a[team=bafe,tag=playing,gamemode=adventure] at @s run effect clear @s levitation
execute as @a[tag=playing,team=bafe,gamemode=adventure] at @s at @s[y=207,distance=..10] run function scenario:become_a_fan/success
execute as @a[tag=playing,team=bafe,gamemode=adventure,scores={death=1..}] at @s run function scenario:become_a_fan/fail
execute if score $time bafe_timer matches 0 as @a[tag=playing,team=bafe,gamemode=adventure] at @s run function scenario:become_a_fan/fail
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12011 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12010 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12009 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12008 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12007 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12006 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12005 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12004 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12003 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12002 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12001 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 12000 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11999 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11998 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11997 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11996 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11995 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11994 198 1 0 0 6 1 10
execute if score $time bafe_timer matches 100..460 run particle dust 0 1 0 1 11993 198 1 0 0 6 1 10
scoreboard players remove @a[tag=playing,team=bafe,gamemode=adventure,scores={bafe_head_cool=1..}] bafe_head_cool 1

execute if score $time bafe_timer matches 100..440 as @a[team=bafe,tag=playing,gamemode=adventure] at @s store result score @s bafe_motion run data get entity @s Motion[1] 100
execute if score $time bafe_timer matches 100..440 as @a[team=bafe,tag=playing,scores={bafe_motion=10..},gamemode=adventure] at @s run tag @s remove bafe_head_hit
execute if score $time bafe_timer matches 100..440 as @a[team=bafe,tag=playing,scores={bafe_motion=0..9},gamemode=adventure,nbt={OnGround:0b},tag=!bafe_head_hit] at @s run scoreboard players set @s bafe_blindness 20
execute if score $time bafe_timer matches 100..440 as @a[team=bafe,tag=playing,scores={bafe_motion=0..9},gamemode=adventure,nbt={OnGround:0b},tag=!bafe_head_hit] at @s run playsound minecraft:entity.hoglin.step master @s ~ ~ ~ 100 0
execute if score $time bafe_timer matches 100..440 as @a[team=bafe,tag=playing,scores={bafe_motion=0..9},gamemode=adventure,nbt={OnGround:0b},tag=!bafe_head_hit] at @s run tag @s add bafe_head_hit

scoreboard players remove @a[tag=playing,team=bafe,gamemode=adventure,scores={bafe_blindness=1..}] bafe_blindness 1
effect give @a[tag=playing,team=bafe,gamemode=adventure,scores={bafe_blindness=1..}] blindness 2 255 true
effect clear @a[tag=playing,team=bafe,gamemode=adventure,scores={bafe_blindness=0}] blindness

setblock 12002 48 1 minecraft:sea_lantern