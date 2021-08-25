tag @r[tag=playing,team=ddp,tag=!ddp_selected,gamemode=adventure] add ddp_selecting
clone 30010 93 -1 30012 95 1 29991 67 -1
execute as @e[type=armor_stand,tag=ddp_spawn] run data merge entity @s {Marker:0b}
tellraw @a[team=ddp,tag=ddp_selecting] [{"text":"Right click a potion to pick it up. You must drink a potion within 30 seconds from now or you will die.","color":"dark_red"}]
execute as @a[team=ddp,tag=ddp_selecting] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0
execute as @a[team=ddp,tag=ddp_selecting] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.55
