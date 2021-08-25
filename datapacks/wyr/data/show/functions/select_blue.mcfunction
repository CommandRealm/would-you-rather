tag @p[tag=playing] add pick_blue
tellraw @p[tag=playing] [{"text":"You have guessed that ","color":"blue"},{"selector":"@a[team=select]"},{"text":" will choose ","color":"blue"},{"selector":"@e[tag=blue_select]"}]
tag @a[tag=pick_blue] remove pick_yellow

setblock ~ ~ ~ air
execute at @e[tag=yellow_press,sort=nearest,limit=1] run setblock ~ ~ ~ air

particle block stone ~ ~ ~ 0.1 0.1 0.1 0.25 25
execute at @e[tag=yellow_press,sort=nearest,limit=1] run particle block stone ~ ~ ~ 0.1 0.1 0.1 0.25 25

playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1
execute at @e[tag=yellow_press,sort=nearest,limit=1] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1

kill @e[tag=yellow_press,sort=nearest,limit=1]
kill @s