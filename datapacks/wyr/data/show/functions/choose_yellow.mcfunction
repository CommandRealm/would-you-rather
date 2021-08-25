tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"selector":"@a[team=select]"},{"text":" has chosen to:","color":"aqua"},{"text":" \"","color":"yellow"},{"selector":"@e[tag=yellow_select]"},{"text":"\"","color":"yellow"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute as @a[tag=pick_yellow,tag=playing] at @s run scoreboard players add @s points 1
execute as @a[tag=pick_yellow,tag=playing] at @s run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" +1","color":"green"}]

execute as @a[tag=pick_blue,tag=playing] at @s run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" +0","color":"red"}]

tag @e[type=area_effect_cloud] remove chosen
tag @e[tag=yellow_select,type=area_effect_cloud] add chosen

scoreboard players set $time showstart 1700
bossbar set minecraft:choosetime visible false