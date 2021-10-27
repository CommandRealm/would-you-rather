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



execute if entity @s[scores={fans=1}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":"Well done, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"selector":"@s","bold":false},{"text":", you did good.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"selector":"@s","bold":false},{"text":", you might be able to win.","color":"#d5d5d5","bold":false}]




execute if entity @s[scores={fans=2}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"*sniff*","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"*sniff* ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", you actually won?","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"I want to be happy, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", but sadness is all I know.","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=3}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meow.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"MEOW! MEOW! MEOW!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"MEEEOOOOOOOOOOOOOOOW!!!!!!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=4}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"text":"Yay! ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", well done!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"selector":"@s","bold":false},{"text":", you remind me of those wonderful witch-hunters!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"selector":"@s","bold":false},{"text":", after you win, maybe you can test my parkour!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=5}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"Dragon","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"selector":"@s","bold":false},{"text":", good luck, you're a warrior!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"Dragon","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"text":"Let your wings soar, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"Dragon","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"text":"Fly to victory, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=6}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"selector":"@s","bold":false},{"text":", your performance was explosive.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"text":"Boom! You did it, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"selector":"@s","bold":false},{"text":", boom!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=7}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"Show them city slickers how it's done, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"Y'all ain't seen nothin' yet! ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":" is on fire!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"selector":"@s","bold":false},{"text":" is farming them points!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=8}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"Mad Scientist","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"text":"I'M CRAZY!!!!!!!!!!!!!!!!!!!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"Mad Scientist","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", that was an experiment done right.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"Mad Scientist","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", science said it couldn't be done!!!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=9}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"Melon Man","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"You, over there, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", you can win this game!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"Melon Man","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"selector":"@s","bold":false},{"text":", you remind me of a Crenshaw melon!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"Melon Man","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"I'm the Melon Man. You are the best player, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=10}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"If I could feel emotions, I'd be happy for you, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"selector":"@s","bold":false},{"text":", you were successful, operations enumerating point values.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"Affirmative results, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=11}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"I hope I'm your only friend, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"... :}","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"I have, how should I say, a surprise for you, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]



execute if entity @s[scores={fans=12}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"Winning feels great, but always acknowledge the valiancy of your opponents, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"Well done, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", but don't fall victim to hubris.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"Victory is only temporary, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=13}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"Took you long enough, to win that scenario, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"I expected more, to be honest, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"If my standards were low, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", I would say good job.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=14}] if score $rand random matches 0 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", if you're in a forest, it's wood you rather.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 1 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", do you happen to know what's brown and sticky? A stick.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 2 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"text":"Can I have a book Mark? Oh wait, that's not your name, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=15}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"Brick","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"You ar my inspouration, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"Brick","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"Go ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"! ","color":"#d5d5d5","bold":false},{"text":"Go ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"! ","color":"#d5d5d5","bold":false},{"text":"GOOO ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!!! ","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"Brick","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"Gimme a W! Gimme uhh Q! Gimme a G! What's dat spell? ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=16}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", you proved everyone wrong.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"text":"You're dominating again, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", as a member of Team Jeb Sheep, rise up!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=17}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"Snow Fox","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"selector":"@s","bold":false},{"text":", snow them how it's done!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"Snow Fox","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"Like Trivia, you will win, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"Snow Fox","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"selector":"@s","bold":false},{"text":", you might even score higher than your personal best.","color":"#d5d5d5","bold":false}]



execute if entity @s[scores={fans=18}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#798b9e","bold":true},{"text":"Mia","color":"#ee96f4","bold":false},{"text":") ","color":"#798b9e","bold":true},{"text":"That was a lot of points, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":" owo","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=18}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#798b9e","bold":true},{"text":"Mia","color":"#ee96f4","bold":false},{"text":") ","color":"#798b9e","bold":true},{"selector":"@s","bold":false},{"text":", you're my senpai! ","color":"#d5d5d5","bold":false},{"text":" ❤","color":"red"}]
execute if entity @s[scores={fans=18}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#798b9e","bold":true},{"text":"Mia","color":"#ee96f4","bold":false},{"text":") ","color":"#798b9e","bold":true},{"text":"With the power of friendship, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", we are unstoppable!","color":"#d5d5d5","bold":false}]
