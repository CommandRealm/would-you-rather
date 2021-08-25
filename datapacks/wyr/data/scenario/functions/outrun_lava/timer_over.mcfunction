playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 0.5
playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 0.75
playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 1.0
playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 1.25
playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 1.5
playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 1.75
playsound minecraft:block.fire.extinguish master @a[team=ol] 24000 66 0 100000 2.0
tellraw @a[team=ol] [{"text":"Time is up!","color":"red"}]
execute as @a[team=ol,gamemode=adventure,tag=playing] at @s run function scenario:outrun_lava/fail