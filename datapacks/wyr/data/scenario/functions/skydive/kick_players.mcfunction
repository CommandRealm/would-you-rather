# called to kick players from the plane


tellraw @a[team=skydive,x=20051,y=116,z=-15,distance=..8.65] [{"text":"You didn't jump!","color":"dark_red"}]
execute as @a[team=skydive,x=20051,y=116,z=-15,distance=..8.65] at @s run playsound minecraft:block.block.anvil.place master @s ~ ~ ~ 1 0
tp @a[team=skydive,x=20051,y=116,z=-15,distance=..8.65] 20057 112.5 -15