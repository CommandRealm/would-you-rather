scoreboard players set $time rap_timer 2400
scoreboard players set $rap active_scenario 1

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue rap_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow rap_seconds


tp @e[type=magma_cube,x=5000,y=66,z=0,distance=..500] 5000 0 0
kill @e[type=item,x=5000,y=66,z=0,distance=..500]
kill @e[type=arrow,x=5000,y=66,z=0,distance=..500]
kill @e[type=experience_orb,x=5000,y=66,z=0,distance=..500]

scoreboard objectives remove rap_kill
scoreboard objectives add rap_kill minecraft.custom:minecraft.mob_kills


give @a[tag=playing,team=rap,gamemode=adventure] iron_sword{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Iron Sword","color":"gray","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:1024,UUID:[I; 1, 1, 1, 1]},{AttributeName:"generic.attack_damage",Amount:7,UUID:[I; 2, 2, 2, 2]}]}
give @a[tag=playing,team=rap,gamemode=adventure] bow{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Bow","color":"gold","italic":false}]'}}
replaceitem entity @a[tag=playing,team=rap,gamemode=adventure] hotbar.4 minecraft:splash_potion{CustomPotionEffects:[{Id:12,Duration:200,Amplifier:3}],CustomPotionColor:14981690,display:{Name:'{"text":"Quick Fire Resistance Potion","color":"#e49a3a","italic":false}'}}
replaceitem entity @a[tag=playing,team=rap,gamemode=adventure] hotbar.5 minecraft:splash_potion{CustomPotionEffects:[{Id:12,Duration:200,Amplifier:3}],CustomPotionColor:14981690,display:{Name:'{"text":"Quick Fire Resistance Potion","color":"#e49a3a","italic":false}'}}
replaceitem entity @a[tag=playing,team=rap,gamemode=adventure] hotbar.6 minecraft:splash_potion{CustomPotionEffects:[{Id:12,Duration:200,Amplifier:3}],CustomPotionColor:14981690,display:{Name:'{"text":"Quick Fire Resistance Potion","color":"#e49a3a","italic":false}'}}
replaceitem entity @a[tag=playing,team=rap,gamemode=adventure] hotbar.8 arrow 32


##Princess summon

summon armor_stand 5092 84.5 2 {Rotation:[90f,0f],Tags:["rap_royalty","rap_die"],ShowArms:1b,Invulnerable:1b,Marker:1b,NoBasePlate:1b,Pose:{Head:[35f,354f,0f],LeftArm:[256f,14f,0f],RightArm:[280f,340f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13728224}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16507135}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13728224}}},{}]}

scoreboard players set $mod random 20
function random:random


execute if score $rand random matches 0 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-1235697309,-1820310336,-2086920745,1587810776],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGMwNzEwOWUyNzI4YzNkMzU2YWMxYTNjNWFjZDBkZDQwZWFmOWQ5ODYzZmRlODM3YmFkZDJjYjExZTY1NWE1YyJ9fX0="}]}}}
execute if score $rand random matches 1 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-1613881894,827542653,-1874591674,-334817177],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzI0ZjUwNGVlNDQ2ZTgzNzc0NmMzMTdhZjM2NGU0ZjA0Njc1ZTRhYmY3ZDMyYTg0MTU4ZmExMTQyYTM0ZDE1In19fQ=="}]}}}
execute if score $rand random matches 2 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1614423346,-960870741,-1156301796,298394597],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAyZWFkYzgzN2MzM2FhYzc0ZjU3MDgxNDE0MDVkZWY2MDljNGJmOTk3NDg0M2VkYjBkMDY4YmI5OTU1NzIifX19"}]}}}
execute if score $rand random matches 3 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1604549352,782583714,-2069938771,500332533],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGUzMDJjYWFkYmZhY2M1ZjI2ZjBmNzgzMzQyY2QyZDYzYzVjYzBiZTZkZDE0MThjMDQzNmE2YWQ0NWRmZjc4In19fQ=="}]}}}
execute if score $rand random matches 4 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1885375923,-530888850,-1517412782,1965436931],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2VjYWNmNDc1ZWI5ZDNmNjQ0ZjJhMDFkNWNjNDk3YzMyODk1ZmQzNDc2MTMyZmYzOTI4ZTY0NzY2YjVlZmYwIn19fQ=="}]}}}
execute if score $rand random matches 5 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1305277367,-118207143,-1406782056,-356107569],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjY2OGU4MTc0ZjYxMTA0OTQwNjM5ZDk3ZWRlMDM4MTkyMDE4OTcxMWYxNGQyZWE2Zjg1OGE0NDc2N2Y2ZWIifX19"}]}}}
execute if score $rand random matches 6 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;813198219,-1981398055,-1238471564,-567694501],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTUxMGI1Yjc3OGZkZTQ5NzRjMGJiYzlkN2FkNDMwNzZkYjZjNGFlZGIwNjMwYTE0ZDgyNTNlZWQxNmQzMjAzYyJ9fX0="}]}}}
execute if score $rand random matches 7 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-1950266508,-957134031,-1322199960,1133624341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjY1YTA2NjMxMTFjYzlmNjEzMmMxYzE0NmFhZTc5MGZjODgxNmUxY2VmYzRhNWE0MjYyYWNkMDYzZGNiMWI5MiJ9fX0="}]}}}
execute if score $rand random matches 8 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1280456731,859259179,-1688568064,-593579021],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGUyZDMyOGZmNjRiMjlhYjA2ZmY4YmE4NTNmN2Q4NTkyZDA5MDg2MTAyMTI2ZjkzYzk4NmMxYWZhN2I5NDMyZSJ9fX0="}]}}}
execute if score $rand random matches 9 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-1288184360,1833779312,-2016919635,610042656],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMmJlNmUyMmRiYjc5MWMxZWQ3YTdmZmMwMGQyMmI4ZjA2NTE4MjExYjc0YTNjYTBmY2M0YWJkYjE4NzQzZSJ9fX0="}]}}}

execute if score $rand random matches 10 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1175390414,661344010,-1954802415,1780316196],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzU1Y2RmNmEzOTZhZjc4MzcwZWVkMTJkODFmMTc1ZGQ2NDM3ODk3YTMzMjY0Nzc1ODVhYzNiM2FkOWNlIn19fQ=="}]}}}
execute if score $rand random matches 11 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;62015952,1998080831,-1341996693,-2129857460],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWFiODE0MTFiODgxYmU5OWRkY2JiYWYzYjY3MGY3ZGE4MmQ5YTdhZWYyNWViZWFkYzdhOTRmMWEzMmMzMWZlYiJ9fX0="}]}}}
execute if score $rand random matches 12 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-767246012,-2068035190,-1500281232,-395372756],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTBhNDRiNzBiMDY4ZjlkM2YxYWQ3YzExODllOWE0M2E2YjFiNjdkNTllZDQzOTI0MzlmYTk4ZGNmNWJiNDU5In19fQ=="}]}}}
execute if score $rand random matches 13 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1286098908,-816036117,-2016887260,-668477502],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODhlM2E2Y2VhM2E4ZGQxNjNiNTZmNTA4ZTQzYzg1M2JjMjAxNTg5NmNkMjY2MmNjYTI2MWJlZTQ5ZjRiNTkxOSJ9fX0="}]}}}
execute if score $rand random matches 14 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1163838309,-1157347157,-2120766836,-226625559],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA1MjExZDMwNDNjMzM0MDhmNTMwZTJhZTNmNzkzOGIwN2I1ZWY3NzVkZDBlMzA3MGE5ZGZhOTQyNTJiNDdmYiJ9fX0="}]}}}
execute if score $rand random matches 15 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;409125494,1198868093,-2064007295,1246753132],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWUzZTM2MTRjNWYzMzViZGY1YzRiOTc0ZDE5MzMwZjI5ODdjNGE5ZTNiZGRmODhkMzU3YzY3YTJiY2YzIn19fQ=="}]}}}
execute if score $rand random matches 16 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1318003623,1079460774,-2101492994,-91288918],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNiNzUxNmU3YzVkN2QzZDcxN2Y4Mzg2MTVjYmM4NjMzYmJiZmVjNGMwZjQ5YzYzZWVlNTRjMTlmZTU2Zjc2In19fQ=="}]}}}
execute if score $rand random matches 17 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;1616333034,-2087563393,-2039287843,-2037473979],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQxZWQwZWJjOTVlZTFjYmU5ZjAyYzM1MzMxYzU1YzZlYzY3MjE1ZjE4ZGJkZTU2MDM0OGFiMzU2MWI0MjQwMCJ9fX0="}]}}}
execute if score $rand random matches 18 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-1505149583,-785625762,-2073401460,638366199],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzVlOWQ4NzJlYThmMDFhMDQwYzFiNDU5MmFmMThkYTc5N2EyZGVkMjRjMDE3M2Q5MTUwODNkMzJmODU1MzMxMyJ9fX0="}]}}}
execute if score $rand random matches 19 run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.head player_head{SkullOwner:{Id:[I;-391674442,-451853149,-1490681435,1595641323],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY1ODhlNzU4YTM3ZmZhYWJkN2M0Yjk2MWQ0M2M4YmQ5ZGRmMDk2N2Q4ZWNjZGQ2MzAzMmJiNjVmZjViMTAwMSJ9fX0="}]}}}

execute if score $rand random matches 10.. run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.chest leather_chestplate{display:{color:10682585}}
execute if score $rand random matches 10.. run replaceitem entity @e[type=armor_stand,tag=rap_royalty] armor.feet leather_boots{display:{color:10682585}}

##Enemy summons

execute positioned 5074 65 0 run function scenario:rescue_royalty/random_summon
execute positioned 5074 65 4 run function scenario:rescue_royalty/random_summon
execute positioned 5076 65 3 run function scenario:rescue_royalty/random_summon
execute positioned 5076 65 1 run function scenario:rescue_royalty/random_summon
execute positioned 5078 65 0 run function scenario:rescue_royalty/random_summon
execute positioned 5078 65 4 run function scenario:rescue_royalty/random_summon

execute positioned 5075 73 -12 run function scenario:rescue_royalty/random_summon
execute positioned 5080 73 -12 run function scenario:rescue_royalty/random_summon
execute positioned 5085 73 -12 run function scenario:rescue_royalty/random_summon
execute positioned 5081 73 -18 run function scenario:rescue_royalty/random_summon
execute positioned 5084 73 -18 run function scenario:rescue_royalty/random_summon
execute positioned 5081 74 -5 run function scenario:rescue_royalty/random_summon
execute positioned 5084 74 -5 run function scenario:rescue_royalty/random_summon
execute positioned 5075 73 16 run function scenario:rescue_royalty/random_summon
execute positioned 5080 73 15 run function scenario:rescue_royalty/random_summon
execute positioned 5080 73 17 run function scenario:rescue_royalty/random_summon
execute positioned 5085 73 17 run function scenario:rescue_royalty/random_summon
execute positioned 5085 73 15 run function scenario:rescue_royalty/random_summon
execute positioned 5084 74 9 run function scenario:rescue_royalty/random_summon
execute positioned 5080 74 9 run function scenario:rescue_royalty/random_summon
execute positioned 5081 73 22 run function scenario:rescue_royalty/random_summon
execute positioned 5084 73 22 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 17 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 15 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 4 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 0 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 -6 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 -11 run function scenario:rescue_royalty/random_summon
execute positioned 5091 73 -13 run function scenario:rescue_royalty/random_summon
execute positioned 5098 69 -12 run function scenario:rescue_royalty/random_summon
execute positioned 5098 67 -7 run function scenario:rescue_royalty/random_summon
execute positioned 5092 67 -6 run function scenario:rescue_royalty/random_summon
execute positioned 5092 67 2 run function scenario:rescue_royalty/random_summon
execute positioned 5097 67 2 run function scenario:rescue_royalty/random_summon
execute positioned 5092 67 9 run function scenario:rescue_royalty/random_summon
execute positioned 5098 67 11 run function scenario:rescue_royalty/random_summon
execute positioned 5098 69 16 run function scenario:rescue_royalty/random_summon
execute positioned 5092 85 7 run function scenario:rescue_royalty/random_summon
execute positioned 5092 85 2 run function scenario:rescue_royalty/random_summon
execute positioned 5092 85 -4 run function scenario:rescue_royalty/random_summon
execute positioned 5092 80 -15 run function scenario:rescue_royalty/random_summon
execute positioned 5100 76 -15 run function scenario:rescue_royalty/random_summon
execute positioned 5100 76 2 run function scenario:rescue_royalty/random_summon
execute positioned 5100 76 19 run function scenario:rescue_royalty/random_summon
execute positioned 5092 80 19 run function scenario:rescue_royalty/random_summon
execute positioned 5104 73 21 run function scenario:rescue_royalty/random_summon
execute positioned 5104 73 7 run function scenario:rescue_royalty/random_summon
execute positioned 5104 73 -3 run function scenario:rescue_royalty/random_summon
execute positioned 5104 73 -17 run function scenario:rescue_royalty/random_summon
execute positioned 5086 75 2 run function scenario:rescue_royalty/random_summon


execute as @a[tag=playing,team=rap,gamemode=adventure] as @e[tag=rap_enemy,sort=random,limit=2] at @s run function scenario:rescue_royalty/random_summon

##knight summons

execute as @e[tag=rap_enemy,sort=random,limit=3,x=5087,y=84,z=-10,distance=15..] at @s run summon skeleton ~ ~ ~ {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:40s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:rap/knight",Tags:["rap_die","rap_enemy","rap_knight"],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:6}]}},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-36746217,-650034142,-1753485129,-862805102],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGYzNmVhMGFhNTU0ZTJjNmI4YjkxOTE2ODJjOThhODk2YTYyNTQ1YzMwYjBlMGNhOWRhNjQ4YTQ3YjdhOTk1YyJ9fX0="}]}}}}]}
execute as @a[tag=playing,team=rap,gamemode=adventure] as @e[tag=rap_knight,sort=random,limit=3] at @s run function scenario:rescue_royalty/random_summon


execute as @a[tag=playing,team=rap,gamemode=adventure] as @e[tag=rap_enemy,sort=random,limit=3,x=5087,y=84,z=-10,distance=..12] at @s run function scenario:rescue_royalty/random_summon

##
##enemy team

team add rap_enemy
team modify rap_enemy friendlyFire false
team join rap_enemy @e[tag=rap_enemy]


##ghast summons

summon ghast 5059 70 -19 {Rotation:[0f,0f],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"]}
summon ghast 5039 70 -19 {Rotation:[0f,0f],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"]}

summon ghast 5059 70 23 {Rotation:[180f,0f],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"]}
summon ghast 5039 70 23 {Rotation:[180f,0f],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"]}

fill 5092 85 -7 5092 86 -7 chain[axis=x]
fill 5092 85 11 5092 86 11 chain[axis=x]

scoreboard players set @a[tag=playing,team=rap] death 0

function scenario:rescue_royalty/active




##Clearing Fire
fill 4972 49 -39 5121 50 36 air replace fire
fill 4972 51 -39 5121 52 36 air replace fire
fill 4972 53 -39 5121 54 36 air replace fire

fill 4972 55 -39 5121 56 36 air replace fire
fill 4972 57 -39 5121 58 36 air replace fire
fill 4972 59 -39 5121 60 36 air replace fire
fill 4972 61 -39 5121 62 36 air replace fire
fill 4972 63 -39 5121 64 36 air replace fire
fill 4972 65 -39 5121 66 36 air replace fire
fill 4972 67 -39 5121 68 36 air replace fire
fill 4972 69 -39 5121 70 36 air replace fire
fill 4972 71 -39 5121 72 36 air replace fire
fill 4972 73 -39 5121 74 36 air replace fire
fill 4972 75 -39 5121 76 36 air replace fire
fill 4972 77 -39 5121 78 36 air replace fire
fill 4972 79 -39 5121 80 36 air replace fire
fill 4972 81 -39 5121 82 36 air replace fire
fill 4972 83 -39 5121 84 36 air replace fire
fill 4972 85 -39 5121 86 36 air replace fire
fill 4972 87 -39 5121 88 36 air replace fire
fill 4972 89 -39 5121 90 36 air replace fire
fill 4972 91 -39 5121 92 36 air replace fire
fill 4972 93 -39 5121 94 36 air replace fire
fill 4972 95 -39 5121 96 36 air replace fire
fill 4972 97 -39 5121 98 36 air replace fire
fill 4972 99 -39 5121 100 36 air replace fire
fill 4972 101 -39 5121 102 36 air replace fire
effect give @e[tag=rap_enemy] fire_resistance 10000 255 true

tellraw @a[team=rap] [{"text":"Reminder: ","color":"green","bold":true},{"text":"This scenario uses spam-click PvP.","color":"gray","bold":false}]