execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Well done!","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Good job!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" I'm proud.","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" I knew you could do it!","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You did it!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" I'm impressed!","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Couldn't have done it better myself.","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You're my favorite to win this show!","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9