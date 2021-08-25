tp @s 35003 67 -1 25 5
execute at @s run particle cloud ~ ~1 ~ 0 0.25 0 0.015 20
execute at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 1.25
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
title @s title [{"text":" "}]
title @s subtitle [{"text":"You went too far away from shore!","color":"red"}]