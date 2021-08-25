scoreboard players add @s gamt_tally_c 1
execute unless entity @s[gamemode=adventure,tag=playing,team=gamt,scores={gamt_tally_c=10..}] run tellraw @a[tag=playing,team=gamt] [{"selector":"@s"},{"text":" chose correctly!","color":"green"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.65
