execute as @a[tag=playing,team=ddp,tag=ddp_selecting] at @s run particle minecraft:witch ~ ~1 ~ 0 0.5 0 0.5 100 force @a
tp @a[team=ddp,tag=ddp_selecting,gamemode=adventure] 29992 67 0 90 2.5
execute as @a[tag=playing,team=ddp,tag=ddp_selecting] at @s run particle minecraft:witch ~ ~1 ~ 0 0.5 0 0.5 100 force @a
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 0
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2
