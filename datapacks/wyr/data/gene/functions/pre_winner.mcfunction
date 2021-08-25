#purDisabledSlots:2039583,Pose is for gene to say the show is about to be over
# called from show:timer

execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" As hard as it is to believe, we are out of time.","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" I believe we have a winner!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Is everyone ready to meet the winner of Would You Rather?","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" I can't wait to find out who won!","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Let's see who isn't a complete buffoon!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Before we end the show, allow me to announce our winner!","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Friends, Would You Rather is over, but we still get to meet the winner!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" We are almost out of time, but we need to know who our champion is!","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9