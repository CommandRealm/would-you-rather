##Called to replace the button

setblock -935 82 -142 minecraft:stone_button[face=wall,facing=north,powered=false]
particle item stone -935 82.5 -142 0.1 0.1 0.1 0.15 5
playsound block.stone.place block @a -935 82 -142 1 1
scoreboard players reset $button pregame