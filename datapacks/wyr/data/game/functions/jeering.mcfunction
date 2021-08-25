execute if entity @s[scores={jeer=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Please fail.","color":"red"}]
execute if entity @s[scores={jeer=1}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Sorry, but I need you to lose.","color":"red"},{"text":" :","color":"red"},{"text":"'","color":"blue"},{"text":"(","color":"red"}]
execute if entity @s[scores={jeer=2}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" I knew I would choose correctly.","color":"red"}]
execute if entity @s[scores={jeer=3}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Gene","color":"aqua"},{"text":" would be disappointed.","color":"dark_red"}]
execute if entity @s[scores={jeer=4}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Why did you do that?","color":"red"}]
execute if entity @s[scores={jeer=5}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Please be nice and fail! :)","color":"red"}]
execute if entity @s[scores={jeer=6}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" That's cold . . . ","color":"red"},{"text":"☃","color":"white"},{"text":"☃","color":"aqua"},{"text":"☃","color":"white"}]
execute if entity @s[scores={jeer=7}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" ☠","color":"dark_red"}]
execute if entity @s[scores={jeer=8}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" This is fine.","color":"dark_red"}]



playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.15