# called to warn players to jump

tellraw @a[team=skydive,x=20051,y=116,z=-15,distance=..8.65] [{"text":"Jump out of the plane within ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second or be pushed out!","color":"red"}]
execute as @a[team=skydive,x=20051,y=116,z=-15,distance=..8.65] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0
