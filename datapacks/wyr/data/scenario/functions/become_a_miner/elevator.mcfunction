execute if score $time bam_timer matches 1599 as @a[tag=playing,team=bam] at @s run playsound minecraft:block.fence_gate.close master @s ~ ~ ~ 1 0

execute if score $time bam_timer matches 1594 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_timer matches 1395 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_timer matches 1375 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_timer matches 1148 as @a[tag=playing,team=bam] at @s run playsound minecraft:block.chest.close master @s ~ ~ ~ 1 0

execute if score $time bam_timer matches 1140 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0


# kill @e[tag=bam_elevator,type=falling_block]
#kill @e[type=falling_block,tag=bam_elevator]
execute as @e[tag=bam_elevator,type=armor_stand] at @s run tp @s ~ ~-0.1 ~

execute as @e[type=armor_stand,tag=bam_center] at @s run clone 8827 118 -22 8827 122 -22 ~1 ~4 ~1
execute as @e[type=armor_stand,tag=bam_center] at @s run clone 8827 118 -22 8827 122 -22 ~-1 ~4 ~1
execute as @e[type=armor_stand,tag=bam_center] at @s run clone 8827 118 -22 8827 122 -22 ~1 ~4 ~-1
execute as @e[type=armor_stand,tag=bam_center] at @s run clone 8827 118 -22 8827 122 -22 ~-1 ~4 ~-1