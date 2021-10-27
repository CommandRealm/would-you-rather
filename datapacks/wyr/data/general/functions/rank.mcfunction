#called from general:join_game
#purpose is to put staff onto the propper team

team join pc_role @s[scores={prefix=-2}]
team join melon @s[scores={prefix=-3}]

team join lobby @s[scores={prefix=-1}]
team join test @s[scores={prefix=0}]
team join help @s[scores={prefix=1}]
team join bld @s[scores={prefix=2}]
team join srbld @s[scores={prefix=3}]
team join prg @s[scores={prefix=4}]

team join srprg @s[scores={prefix=5}]
team join manager @s[scores={prefix=6}]

team join lead @s[scores={prefix=7}]

team join art @s[scores={prefix=8}]


team join cr @s[scores={prefix=99}]

team join tournament @s[scores={prefix=98}]


team join unlock @s[scores={prefix=200}]

execute if entity @s[tag=spectating] run team join spectator

tag @a remove exclusive_snow_fox
tag @a remove exclusive_jeb_sheep

tag Bodi25 add exclusive_snow_fox
tag TheRangerMark add exclusive_snow_fox

tag SmallDeemo add exclusive_jeb_sheep
tag Captonium add exclusive_jeb_sheep

