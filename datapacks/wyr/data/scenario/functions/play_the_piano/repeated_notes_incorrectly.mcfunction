title @s title [{"text":"Wrong!","color":"red"}]
title @s subtitle [{"text":" "}]
function scenario:play_the_piano/fail
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000 1.65
clear @s