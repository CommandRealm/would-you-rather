##Order:
#Bob
#Sully The Shulker
#Cats
#Darcy
#Dragon
#Blue TNT
#Marm
#Mad Scientist
#Melon Man
#Crbot
#Harv
#Elder Guardian
#Bubba
#Perry
#Brick
scoreboard players set $mod random 3
function random:random

##execute if entity @s[scores={fans=1}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":" "}]



execute if entity @s[scores={fans=1}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":"You lost, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"selector":"@s","bold":false},{"text":", don't give up.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":"Don't worry about it, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]




execute if entity @s[scores={fans=2}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"selector":"@s","bold":false},{"text":", I knew there was no point...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"I thought you could maybe brighten my day, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"Don't worry, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", you're not as bad as I am...","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=3}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meeowww…","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meow, meow…","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meeowww…","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=4}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"text":"You remind me of that awful illusioner, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"selector":"@s","bold":false},{"text":", if I weren't so small I would've won that.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"text":"...","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=5}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"Dragon","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"text":"Aim for the sky, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"Dragon","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"selector":"@s","bold":false},{"text":", you're voided.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"Dragon","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"selector":"@s","bold":false},{"text":", needs a firework right about now.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=6}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"selector":"@s","bold":false},{"text":", you blew it.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"text":"Looks like your fuse is running low, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"text":"That didn't enhance the situation, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=7}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"Y'aint doing so good there, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"What in tarnation was that, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"?","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"selector":"@s","bold":false},{"text":", the cows back home won't like this.","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=8}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"Mad Scientist","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", it's alright, just remember the three unwritten ways to beat scenarios: 1. 2. 3.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"Mad Scientist","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"text":"Stay in school, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"Mad Scientist","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", I'm not mad, I'm just disappointed.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=9}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"Melon Man","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"Don't worry about that, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", buy some of my various melons!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"Melon Man","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"I like melons, I know you don't like failure, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"Melon Man","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"♫ *melon blues* ♫","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=10}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"I've calculated your odds of winning at 10%, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"Error 410, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"'s actions do not compute.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"selector":"@s","bold":false},{"text":", scenario failed, system shutting down.","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=11}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"I feed off of your negative energy, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"Tick tock, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", time is running out...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"I sense your fear, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]



execute if entity @s[scores={fans=12}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"We should always learn from our mistakes, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":". For if we don't, we are doomed to repeat them.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"Succeeding after failing is more impressive than succeeding on the first try, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"Focus on your target, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", it's impossible to hit anything with your eyes closed.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=13}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"That performance was about what I expected, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"I've seen turtles do better than you, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"I would root for you, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", but I only root for winners.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=14}] if score $rand random matches 0 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", it could be worse, you could be stuck in a hole full of water. I know it sounds rude, but I mean well.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 1 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", you're acting like a bicycle. You're too tired.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 2 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", I know someone else just won, but, like tropical birds, toucan play at that game.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=15}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"Brick","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"Hay, I still belweive in you, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"Brick","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"Want sum of my powur, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"?","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"Brick","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"You ar still my best fwiend, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=16}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", you still got this.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", that's alright, pull off a comeback!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", win this next time!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=17}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"Snow Fox","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"There's still time, go for the gold, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"Snow Fox","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"I know you're not used to failure, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", become the scenario-master.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"Snow Fox","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"Look out for wolves, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
##

execute if entity @s[scores={fans=18}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#798b9e","bold":true},{"text":"Mia","color":"#ee96f4","bold":false},{"text":") ","color":"#798b9e","bold":true},{"selector":"@s","bold":false},{"text":" is such a sussy baka.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=18}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#798b9e","bold":true},{"text":"Mia","color":"#ee96f4","bold":false},{"text":") ","color":"#798b9e","bold":true},{"text":"UwU","color":"#d5d5d5","bold":false},{"text":" ❤","color":"red"}]
execute if entity @s[scores={fans=18}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#798b9e","bold":true},{"text":"Mia","color":"#ee96f4","bold":false},{"text":") ","color":"#798b9e","bold":true},{"text":"Nani!?!??!?!","color":"#d5d5d5","bold":false}]
