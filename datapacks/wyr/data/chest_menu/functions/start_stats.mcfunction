scoreboard players set @s screen 5
function chest_menu:clear


loot replace entity @s enderchest.11 loot minecraft:stats/games
loot replace entity @s enderchest.12 loot minecraft:stats/wins
loot replace entity @s enderchest.13 loot minecraft:stats/scenarios
loot replace entity @s enderchest.14 loot minecraft:stats/successes
loot replace entity @s enderchest.15 loot minecraft:stats/fails
loot replace entity @s enderchest.22 loot minecraft:stats/awards


item replace entity @s enderchest.18 with barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","color":"#ff0000","italic":false,"bold":true}]'}}