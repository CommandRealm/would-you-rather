

execute if score $death ddp_bottles matches 0 run playsound minecraft:block.end_gateway.spawn master @a
execute if score $death ddp_bottles matches 0 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1

scoreboard players reset @s ddp_cool
tag @s remove ddp_selecting
function scenario:drink_potions/fail
tp @e[type=vindicator,tag=ddp_die] 0 1 0
kill @e[type=vindicator,tag=ddp_die]
execute if entity @a[tag=playing,team=ddp,gamemode=adventure] run scoreboard players set $time ddp_timer 700