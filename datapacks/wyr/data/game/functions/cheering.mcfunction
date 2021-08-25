execute if entity @s[scores={cheer=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Go ","color":"green"},{"selector":"@a[team=select]"},{"text":"!","color":"green"}]
execute if entity @s[scores={cheer=1}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" I believe in you! ","color":"green"}]
execute if entity @s[scores={cheer=2}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Don't ","color":"green"},{"text":"fail","color":"red","underlined":true},{"text":" me now.","color":"green"}]
execute if entity @s[scores={cheer=3}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" The clutch!!!","color":"dark_green"}]
execute if entity @s[scores={cheer=4}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" You got this.","color":"dark_green"}]
execute if entity @s[scores={cheer=5}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Even ","color":"green"},{"text":"Gene","color":"aqua"},{"text":" wants you to succeed.","color":"green"}]
execute if entity @s[scores={cheer=6}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" GALAXY BRAIN!","color":"dark_green"}]
execute if entity @s[scores={cheer=7}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" <o/","color":"dark_green"}]
execute if entity @s[scores={cheer=8}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" Command Realm would be proud!","color":"gold","bold":true}]

playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.1