execute unless score $time bet_bar matches 0 if entity @s[scores={drop_succeed=1}] run tellraw @s [{"text":"Thank you for voting.","color":"blue"},{"text":" You voted succeed.","color":"green"}]
execute unless score $time bet_bar matches 0 if entity @s[scores={drop_abstain=1}] run tellraw @s [{"text":"Thank you for voting.","color":"blue"},{"text":" You abstained.","color":"dark_purple"}]
execute unless score $time bet_bar matches 0 if entity @s[scores={drop_fail=1}] run tellraw @s [{"text":"Thank you for voting.","color":"blue"},{"text":" You voted fail.","color":"red"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.75
gamemode spectator @s
clear @s lime_concrete
clear @s purple_concrete
clear @s red_concrete
execute positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:lime_concrete"}},distance=..1]
execute positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:purple_concrete"}},distance=..1]
execute positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:red_concrete"}},distance=..1]