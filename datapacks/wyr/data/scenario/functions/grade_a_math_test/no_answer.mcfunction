tellraw @a[tag=playing,team=gamt] [{"selector":"@s"},{"text":" didn't answer, it has been marked as incorrect.","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0
scoreboard players add @s gamt_tally_i 1