#called from general:join_game
#purpose is to put staff onto the propper team
tag @a remove lead
tag @a remove srbld
tag @a remove srprg
tag @a remove prg
tag @a remove bld
tag @a remove help
tag @a remove test
tag FalconReign add lead
tag HippehWizard add srbld
tag Captain_Deadpool add bld
tag SmallDeemo add bld
tag II_Owen_II add bld
tag GeneralGuy64 add help
tag TheRegularMex add srbld
tag TheTypicalMex add bld
tag TheRangerMark add help
tag CheckMC add bld
tag Calverin add bld
tag ChipChase add help
tag Purple_Reign__ add bld
tag Focii_ add bld
tag GlytchIsYes add help
tag sac1 add help
tag Bodi25 add pc_role
tag ArwenOC add test
tag CompleteCircuit add test
tag LiamDun1 add test
tag Miestrode add test
tag slime345creep add test
tag Spy_Guy1 add test
tag Persp3ctive add test
tag FetchBot add test
tag herobrine_19 add test
tag linkdogeman add test
tag Peeps__ add test
tag Warrior0120 add test
tag PrimePenguins add test
tag LegoBro add test
tag thinkrocks12 add test
tag ImAHumanISwear add help
tag Arrgs add test
tag Loefars add test
tag FatalVortex add test
tag J70 add help
tag Raven_Sami add test
tag pcgus add pc_role
tag LucasLRP add test
tag ShortJim add test
tag Blueberry_theUwU add test
tag dio_yeeto add test
tag MelonKattt add test
tag GoldSlimeling91 add test
tag Nxmes add test
tag Teejers add test
tag _tsts_ add test
tag gibbsly add test

##Bodi25, ArwenOC, CompleteCircuit, LiamDun1, Miestrode, slime345creep, Spy_Guy1, Persp3ctive, FetchBot, herobrine_19, and linkdogeman.
team join lobby @s
team join test @s[tag=test]
team join help @s[tag=help]
team join lead @s[tag=lead]
team join bld @s[tag=bld]
team join srbld @s[tag=srbld]
team join prg @s[tag=prg]
team join srprg @s[tag=srprg]
team join pc_role @s[tag=pc_role]

execute if entity @s[tag=spectating] run team join spectator

tag @a remove exclusive_snow_fox
tag @a remove exclusive_jeb_sheep

tag Bodi25 add exclusive_snow_fox
tag TheRangerMark add exclusive_snow_fox

tag SmallDeemo add exclusive_jeb_sheep
tag Captain_Deadpool add exclusive_jeb_sheep