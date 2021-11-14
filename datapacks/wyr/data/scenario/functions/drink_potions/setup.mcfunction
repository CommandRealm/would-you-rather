clear @a[team=ddp]
gamemode adventure @a[team=ddp,gamemode=!adventure,tag=playing]


tp @e[tag=ddp_die] 0 1 0
kill @e[tag=ddp_die]

team add ddp_color

scoreboard objectives add ddp_timer dummy

scoreboard objectives add ddp_bottles dummy

execute as @a[tag=playing,team=ddp,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=ddp,gamemode=adventure]
execute if entity @a[tag=playing,team=ddp,scores={check_players=1}] run scoreboard players set $number ddp_bottles 4
execute if entity @a[tag=playing,team=ddp,scores={check_players=2..}] run scoreboard players set $number ddp_bottles 0
execute as @a[tag=playing,team=ddp,scores={check_players=2..}] run scoreboard players add $number ddp_bottles 2

execute if entity @a[tag=playing,team=ddp,scores={check_players=1}] run scoreboard players set $poison ddp_bottles 2
execute if entity @a[tag=playing,team=ddp,scores={check_players=2..}] run scoreboard players set $poison ddp_bottles 0
execute as @a[tag=playing,team=ddp,scores={check_players=2..}] run scoreboard players add $poison ddp_bottles 1

scoreboard players operation $d_number ddp_bottles = $number ddp_bottles
scoreboard players operation $d_poison ddp_bottles = $poison ddp_bottles


execute as @e[type=armor_stand,tag=ddp_spawn,nbt={HandItems:[{id:"minecraft:potion"}]}] run data merge entity @s {Marker:0b}
kill @e[type=armor_stand,tag=ddp_spawn]
##removed summons here

scoreboard players set @a[tag=playing,team=ddp] ddp_bottles 1
##removed functions here do to bug where there were extra potions
tag @a remove ddp_death
clone 30010 93 -1 30012 95 1 29991 67 -1

scoreboard objectives add ddp_drink minecraft.used:minecraft.potion
scoreboard objectives add ddp_cool dummy

kill @e[type=witch,tag=ddp_witch]
summon witch 29978 70 0 {DeathLootTable:"scenario/empty",Rotation:[270.0f,0.0f],Tags:["ddp_witch","ddp_die"],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

execute if entity @a[team=ddp,tag=tutorial] run schedule function scenario:drink_potions/tutorial_setup 40t
execute unless entity @a[team=ddp,tag=tutorial] run schedule function scenario:check_countdown 40t

fill 30004 67 1 30004 70 -1 air
