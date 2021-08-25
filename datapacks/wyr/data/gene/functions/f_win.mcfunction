execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Good try.","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" That's disappointing.","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" That's tough.","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Oof.","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Close one!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Was it that hard?","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You tried!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Come to me after the show, and I'll give you some lessons.","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.9