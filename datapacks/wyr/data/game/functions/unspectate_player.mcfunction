summon armor_stand ~ ~-5 ~ {Tags:["unspectate_armor_stand"],Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Rotation:[0.0f,90.0f]}
spectate @e[type=armor_stand,tag=unspectate_armor_stand,sort=nearest,limit=1] @s
tp @s ~ ~ ~
kill @e[type=armor_stand,tag=unspectate_armor_stand]