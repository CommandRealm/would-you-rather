tag @p[tag=playing] add pick_yellow
tellraw @p[tag=playing] [{"text":"You have guessed that ","color":"yellow"},{"selector":"@a[team=select]"},{"text":" will choose ","color":"yellow"},{"selector":"@e[tag=yellow_select]"}]
tag @a[tag=pick_yellow] remove pick_blue

setblock ~ ~ ~ air
execute at @e[tag=blue_press,sort=nearest,limit=1] run setblock ~ ~ ~ air

particle block stone ~ ~ ~ 0.1 0.1 0.1 0.25 25
execute at @e[tag=blue_press,sort=nearest,limit=1] run particle block stone ~ ~ ~ 0.1 0.1 0.1 0.25 25

playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1
execute at @e[tag=blue_press,sort=nearest,limit=1] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1

kill @e[tag=blue_press,sort=nearest,limit=1]
kill @s