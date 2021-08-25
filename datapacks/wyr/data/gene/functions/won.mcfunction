execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Magnificent!","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Amazing job!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You were my favorite from the start.","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" That wasn't too hard, was it?","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" More points, more victories!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You were as cool as a cucumber.","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You were awesome!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" You could have had more points.","color":"aqua"}] 
execute as @a[tag=just_played] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
tag @a remove just_played