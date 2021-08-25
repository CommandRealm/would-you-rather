scoreboard players remove $time pd_timer 1
scoreboard players operation : pd_timer = $time pd_timer
scoreboard players operation : pd_timer /= $20 number
scoreboard players add : pd_timer 1
execute unless score : pd_timer = : pd_seconds run scoreboard players operation : pd_seconds = : pd_timer

execute as @a[team=pd,scores={pd_taken=1..},gamemode=adventure] at @s run function scenario:play_dodgeball/fail
execute unless entity @a[team=pd,scores={pd_taken=1..},gamemode=adventure] if score $time pd_timer matches 0 as @a[team=pd,gamemode=adventure] at @s run function scenario:play_dodgeball/success

execute if score $pd active_scenario matches 1 if score $time pd_timer matches 1.. run schedule function scenario:play_dodgeball/active 1t
execute if score $pd active_scenario matches 1 unless entity @a[team=pd] run function scenario:play_dodgeball/end

execute as @e[type=shulker,limit=1,tag=pd_shulker] at @s run data merge entity @s {Peek:30b}

execute as @a[team=pd,tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run function scenario:play_dodgeball/get_chestplate

scoreboard players add @e[type=shulker_bullet,x=21000,y=66,z=0,distance=..200] pd_sound 1
execute as @e[scores={pd_sound=5}] at @s as @a[tag=playing,distance=..200,team=pd] at @s run playsound minecraft:entity.snowball.throw master @s ~ ~ ~ 1 0.65
tag @e[scores={pd_sound=1}] add die
execute as @e[scores={pd_sound=1}] at @s run data merge entity @s {Invulnerable:1b}



