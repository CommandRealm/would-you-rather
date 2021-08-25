scoreboard players add @s gamt_tally_i 1
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0
execute unless entity @s[gamemode=adventure,tag=playing,team=gamt,scores={gamt_tally_i=2..}] run tellraw @a[tag=playing,team=gamt] [{"selector":"@s"},{"text":" chose incorrectly.","color":"red"}]