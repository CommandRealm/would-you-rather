#called from general:join
#purpose is to play the wyr theme when someone joins
scoreboard players add @a[scores={joinsong=-99..}] joinsong 1
execute as @a[scores={joinsong=3}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={joinsong=3}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute as @a[scores={joinsong=3}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2
execute as @a[scores={joinsong=3}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

execute as @a[scores={joinsong=7}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute as @a[scores={joinsong=7}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute as @a[scores={joinsong=7}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=11}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1
execute as @a[scores={joinsong=11}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.175
execute as @a[scores={joinsong=11}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=15}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute as @a[scores={joinsong=15}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute as @a[scores={joinsong=15}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=19}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={joinsong=19}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute as @a[scores={joinsong=19}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=23}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute as @a[scores={joinsong=23}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute as @a[scores={joinsong=23}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=27}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1
execute as @a[scores={joinsong=27}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.175
execute as @a[scores={joinsong=27}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=31}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute as @a[scores={joinsong=31}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute as @a[scores={joinsong=31}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=35}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.675
execute as @a[scores={joinsong=35}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.675
execute as @a[scores={joinsong=35}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2

execute as @a[scores={joinsong=39}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={joinsong=39}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute as @a[scores={joinsong=39}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.75 2
execute as @a[scores={joinsong=39}] at @s run playsound minecraft:block.note_block.cow_guitar master @a ~ ~ ~ 1 2
scoreboard players set @a[scores={joinsong=39..}] joinsong -100

scoreboard players set @a[scores={joinsong=0}] alternate 1
execute as @a[scores={joinsong=0..26,alternate=1}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
scoreboard players add @a[scores={joinsong=0..}] alternate 1
scoreboard players set @a[scores={joinsong=0..,alternate=3}] alternate 1

title @a[scores={joinsong=0}] title [{"text":"W","color":"blue","bold":true},{"text":"","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=2}] title [{"text":"Wo","color":"blue","bold":true},{"text":"","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=4}] title [{"text":"Wou","color":"blue","bold":true},{"text":"","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=6}] title [{"text":"Woul","color":"blue","bold":true},{"text":"","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=8}] title [{"text":"Would","color":"blue","bold":true},{"text":"","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=10}] title [{"text":"Would","color":"blue","bold":true},{"text":" Y","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=12}] title [{"text":"Would","color":"blue","bold":true},{"text":" Yo","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=14}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":"","color":"yellow","bold":true}]
title @a[scores={joinsong=16}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" R","color":"yellow","bold":true}]
title @a[scores={joinsong=18}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Ra","color":"yellow","bold":true}]
title @a[scores={joinsong=20}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Rat","color":"yellow","bold":true}]
title @a[scores={joinsong=22}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Rath","color":"yellow","bold":true}]
title @a[scores={joinsong=24}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Rathe","color":"yellow","bold":true}]
title @a[scores={joinsong=26}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Rather","color":"yellow","bold":true}]
title @a[scores={joinsong=32}] title [{"text":"Would","color":"green","bold":true},{"text":" You","color":"green","bold":true},{"text":" Rather","color":"green","bold":true}]
title @a[scores={joinsong=34}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Rather","color":"yellow","bold":true}]
title @a[scores={joinsong=36}] title [{"text":"Would","color":"green","bold":true},{"text":" You","color":"green","bold":true},{"text":" Rather","color":"green","bold":true}]
title @a[scores={joinsong=38}] title [{"text":"Would","color":"blue","bold":true},{"text":" You","color":"aqua","bold":true},{"text":" Rather","color":"yellow","bold":true}]
title @a[scores={joinsong=38}] subtitle {"text":"By the ","color":"white","underlined":true,"extra":[{"text":"Command","color":"aqua","bold":true,"extra":[{"text":" Realm","color":"dark_aqua","extra":[{"text":" Team","bold":false,"color":"white"}]}]}]}


execute if entity @a[scores={joinsong=-99..}] run schedule function lobby:intro/in_progress 1t