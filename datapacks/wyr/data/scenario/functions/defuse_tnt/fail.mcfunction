function scenario:fail_scenario
execute as @a[tag=playing,team=dab] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1
execute as @a[tag=playing,team=dab] at @s run particle minecraft:explosion ~ ~1 ~ 2 2 2 1 100 force @s
effect give @a[tag=playing,team=dab] blindness 5 255 true
execute unless entity @a[team=dab,tag=playing,gamemode=adventure] run function scenario:defuse_tnt/end





