scoreboard players add $number credits 1
scoreboard players set $time credits 0
execute if score $number credits matches 12.. run scoreboard players set $number credits 1
kill @e[type=armor_stand,tag=credits_cycle]
particle cloud -945 80 -111 0 0 0 0.15 5
playsound minecraft:entity.arrow.hit_player master @a -945 80 -111 0.05 2
#/summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Marker:1b,Pose:{LeftLeg:[61f,0f,0f],RightLeg:[306f,0f,0f]}}
##execute if score $number credits matches 1 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_purple"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9833668}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9833668}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}




execute if score $number credits matches 1 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Pose:{Head:[22f,0f,0f],LeftLeg:[355f,11f,0f],RightLeg:[11f,10f,0f],LeftArm:[333f,302f,348f],RightArm:[340f,77f,35f]},Tags:["credits_cycle","show_details","credits_purple"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9833668}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9833668}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1656947175,1780500941,-1972280600,837778225],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU3Y2FjNzNkYmZmMTZkZWRlY2IwYmY3NmE0MzhiNTI3ZDQ2MDJhYWVkN2U3ZTA3YzgyNDAzYmVjOWQ3MDFhNSJ9fX0="}]}}}}]}
execute if score $number credits matches 2 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_owen"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2442928}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8226559}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1522061253,-1468511986,-2067871424,308789563],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBlYmE2YzM1ODc5MDUzZmRiMGUwMTgzMGU5YzVlYzdkZTc5YTg2NjMwNDFhMzM5ZDU5NjNkZTg0ZmYyODRkOCJ9fX0="}]}}}}],Pose:{Head:[0f,0f,15f],LeftLeg:[0f,0f,25f],RightLeg:[0f,0f,23f],LeftArm:[0f,0f,351f],RightArm:[0f,0f,352f]}}
execute if score $number credits matches 3 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_deemo"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7064779}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13750737}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-61849355,558057532,-1127761299,839033552],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA5Y2NiM2U5YWNiZWE5NzI0ZjNhNjMzZTFmNWViMWYwOTU5MmJhYzQ0YTZhZWU3YTA5ODM1MWViNjU5ZWJmZSJ9fX0="}]}}}}],Pose:{Body:[0f,8f,0f],LeftArm:[270f,294f,305f],RightArm:[271f,64f,38f]}}
execute if score $number credits matches 4 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Pose:{Body:[0f,10f,0f],Head:[325f,8f,0f],LeftLeg:[6f,23f,0f],RightLeg:[351f,344f,0f],LeftArm:[290f,309f,0f],RightArm:[303f,52f,0f]},Tags:["credits_cycle","show_details","credits_sac1"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3684408}}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3684408}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1504769993,-1382790965,-1376971678,1961088044],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWFjNzI0N2M1N2Q1ZjQxNGNkNzQxNTdhMjFiZmJiYjkwYWU1MzkxN2NmY2UyYjc5MTk2NTYwZjkxNzY3OWI5MSJ9fX0="}]}}}}]}


execute if score $number credits matches 5 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_glytch"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1873628}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1121125303,-358856325,-1094370226,332383066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlmMTMwOGUxNzQxY2IzZTg4YzdlZjE5YzQwOGE5OTQ1MWM1NjI4YThiZTY3ZmU1NWE2YzU2ZmZiMDMzOWM0In19fQ=="}]}}}}],Pose:{Head:[356f,358f,0f],LeftArm:[0f,0f,6f],RightArm:[0f,0f,354f]}}
execute if score $number credits matches 6 run summon armor_stand -945 80 -111 {Rotation:[237.0f,0.0f],Tags:["credits_cycle","show_details","credits_chip"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11051381}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2638562}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-894437771,-11779630,-1435770272,-2021707571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyYjBiN2U1ZWVmZGVmOTUxYWIyZDczMTk4NzkwMTM1YWNkOGU2Yzc2OTc1Y2I0ZmUyMGNjNThiMGYwYzJjMiJ9fX0="}]}}}}],Pose:{Body:[0f,19f,0f],LeftLeg:[17f,58f,0f],RightLeg:[347f,0f,0f],LeftArm:[195f,321f,72f],RightArm:[214f,94f,263f]}}
execute if score $number credits matches 7 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_general"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9539985}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3386179}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13619151}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1767971645,-841267646,-1347643973,-615462559],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTI0Y2Y4MGE4YjdmNTNmM2UyMzA3ZTRhMDc1ZjkyMmYyYzZhYjNhZGJlYThiODgzZTY0ZDEzY2Y2NTc0YTQ1YSJ9fX0="}]}}}}]}
execute if score $number credits matches 8 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_human"],Pose:{Head:[335f,56f,0f],LeftLeg:[19f,17f,0f],RightLeg:[360f,329f,0f],LeftArm:[348f,21f,0f],RightArm:[251f,33f,0f]},Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1294767468,158877305,-1238176471,1752424094],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmZlNTk5ODgxNzg4ZmU1NzMzN2RiNzdlZGJiMTdhMjExOTY5YzVlNjViNDdjOGFiMjVmNjAxYTU4MGEzMjE5ZSJ9fX0="}]}}}}]}
execute if score $number credits matches 9 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_focii"],Pose:{LeftLeg:[61f,0f,0f],RightLeg:[306f,0f,0f]},Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16774930}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3352350}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16774930}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2106940670,1781089413,-1597554212,-546744942],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Q4NDZiZThkMzM1YjVlMzU1ZGRkNDdlMzFlNmFlNTJjNGNlNjA4NzNlZGVjYWVlNWVlOTBiYmRiZTc4M2FhMCJ9fX0="}]}}}}]}
execute if score $number credits matches 10 run summon armor_stand -945 80 -111 {Rotation:[237.5f,0.0f],Tags:["credits_cycle","show_details","credits_mark"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1977459}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14735723}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;256901103,-1611775859,-1215702844,1554916088],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWUwNGUwOGJhZjkyNjVhOWRmNWVmYmI4ZGU3M2RjN2RmMzhiMDIyMzljODk1ZWJiMDkyOTNjMTJhNzQ0Y2I1ZCJ9fX0="}]}}}}],Pose:{Head:[56f,0f,0f],RightArm:[279f,343f,0f]}}
execute if score $number credits matches 11 run summon armor_stand -945 80 -111 {Rotation:[236.5f,0.0f],Tags:["credits_cycle","show_details","credits_j70"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15263976}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16774486}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1428309012,1535266370,-1074955961,984968634],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTI4ZDFiOTM3MjU4MmE2NjcxODkwYzE1NDFjMDk3Nzc2ZTZhNDZkZTE3NDM0OTNkM2NmMzU1MzhhNWZmOGFiMiJ9fX0="}]}}}}],Pose:{Head:[348f,333f,0f],RightLeg:[15f,0f,0f],LeftArm:[146f,49f,0f],RightArm:[329f,68f,0f]}}



















##execute if score $number credits matches 1 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_chip"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11051381}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2638562}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-894437771,-11779630,-1435770272,-2021707571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyYjBiN2U1ZWVmZGVmOTUxYWIyZDczMTk4NzkwMTM1YWNkOGU2Yzc2OTc1Y2I0ZmUyMGNjNThiMGYwYzJjMiJ9fX0="}]}}}}],Pose:{Body:[0f,19f,0f],LeftLeg:[17f,58f,0f],RightLeg:[347f,0f,0f],LeftArm:[195f,321f,72f],RightArm:[214f,94f,263f]}}
##execute if score $number credits matches 2 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_regs"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14427425}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;965904812,-2045751826,-1270681341,688629862],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNDlmN2U0MWEzZDY3MDJjN2RiM2YxZDQxOTA1ZGViOWQzYzNjN2M3MzI1OGY1NjhkNzZhYmUwNzFiZjMwYSJ9fX0="}]}}}}],Pose:{Head:[328f,54f,15f],LeftLeg:[356f,329f,0f],RightLeg:[6f,350f,0f],RightArm:[229f,45f,0f]}}
##execute if score $number credits matches 3 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_glytch"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1873628}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1121125303,-358856325,-1094370226,332383066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlmMTMwOGUxNzQxY2IzZTg4YzdlZjE5YzQwOGE5OTQ1MWM1NjI4YThiZTY3ZmU1NWE2YzU2ZmZiMDMzOWM0In19fQ=="}]}}}}],Pose:{Head:[356f,358f,0f],LeftArm:[0f,0f,6f],RightArm:[0f,0f,354f]}}
##execute if score $number credits matches 4 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_calverin"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16772701}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;210561014,1295272302,-1789222565,-672588094],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}}}}],Pose:{Head:[25f,0f,0f],LeftArm:[0f,0f,270f],RightArm:[0f,0f,89f]}}
##execute if score $number credits matches 5 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_deemo"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7064779}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13750737}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-61849355,558057532,-1127761299,839033552],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA5Y2NiM2U5YWNiZWE5NzI0ZjNhNjMzZTFmNWViMWYwOTU5MmJhYzQ0YTZhZWU3YTA5ODM1MWViNjU5ZWJmZSJ9fX0="}]}}}}],Pose:{Body:[0f,8f,0f],LeftArm:[270f,294f,305f],RightArm:[271f,64f,38f]}}
##execute if score $number credits matches 6 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_bodi"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-83004747,-1423031396,-2105135202,-1269898465],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTIyZjNiNmYwMThiMDY3ODEyZjdiM2QwNDg3OWRjZjZhYjhlMjA3OWE0ODAzY2U5MWJhZDYzYTdlZjAxYmE4NSJ9fX0="}]}}}}],Pose:{Body:[7f,0f,0f],Head:[45f,0f,0f],LeftArm:[307f,355f,0f],RightArm:[312f,10f,335f]}}
##execute if score $number credits matches 7 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_boppo"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-580407984,1086210376,-1277814176,-1808033505],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGE3YWQ4NmJmZDJjNzc3NzA2MmQ3NWI2YTE3MTQ2MmQzM2M4OGIyOGNlNzIxYWIzZGZhYWVjNDEwMWYyMzc1OCJ9fX0="}]}}}}],Pose:{Body:[0f,352f,0f],Head:[347f,318f,0f],LeftArm:[247f,320f,0f]}}
##execute if score $number credits matches 8 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_mark"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1977459}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14735723}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;256901103,-1611775859,-1215702844,1554916088],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWUwNGUwOGJhZjkyNjVhOWRmNWVmYmI4ZGU3M2RjN2RmMzhiMDIyMzljODk1ZWJiMDkyOTNjMTJhNzQ0Y2I1ZCJ9fX0="}]}}}}],Pose:{Head:[56f,0f,0f],RightArm:[279f,343f,0f]}}
##execute if score $number credits matches 9 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_owen"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2442928}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8226559}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1522061253,-1468511986,-2067871424,308789563],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBlYmE2YzM1ODc5MDUzZmRiMGUwMTgzMGU5YzVlYzdkZTc5YTg2NjMwNDFhMzM5ZDU5NjNkZTg0ZmYyODRkOCJ9fX0="}]}}}}],Pose:{Head:[0f,0f,15f],LeftLeg:[0f,0f,25f],RightLeg:[0f,0f,23f],LeftArm:[0f,0f,351f],RightArm:[0f,0f,352f]}}
##execute if score $number credits matches 10 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_j70"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15263976}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16774486}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1428309012,1535266370,-1074955961,984968634],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTI4ZDFiOTM3MjU4MmE2NjcxODkwYzE1NDFjMDk3Nzc2ZTZhNDZkZTE3NDM0OTNkM2NmMzU1MzhhNWZmOGFiMiJ9fX0="}]}}}}],Pose:{Head:[348f,333f,0f],RightLeg:[15f,0f,0f],LeftArm:[146f,49f,0f],RightArm:[329f,68f,0f]}}
##execute if score $number credits matches 11 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_captain"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9057337}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;828555715,1188513059,-1356092797,-658886164],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWViMTg5YWQ2MWUwYjFiZmI5YTlhMDkyYzg3ODk2NDgzYjM2ZmFlMjkzOTdhYTlmOTQxMjlmNTBlMzc1YWQ4ZiJ9fX0="}]}}}}],Pose:{Head:[354f,0f,0f],LeftArm:[225f,282f,0f],RightArm:[224f,90f,0f]}}
##execute if score $number credits matches 12 run summon armor_stand -945 80 -111 {Rotation:[135.0f,0.0f],Tags:["credits_cycle","show_details","credits_cheese"],Marker:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6077173}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6077173}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1003369232,-2078718853,-1342680797,-1954655744],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFhNTA1NDRhZTAyMWVmMmUyMjRlYjM5ODRkYTZjOTZkMzY4M2I5Zjg3NDM0ZGE5NTViY2JkNTQ1YzZkNGZkMCJ9fX0="}]}}}}]}



##SkullOwner:{Id:[I;-1504769993,-1382790965,-1376971678,1961088044],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWFjNzI0N2M1N2Q1ZjQxNGNkNzQxNTdhMjFiZmJiYjkwYWU1MzkxN2NmY2UyYjc5MTk2NTYwZjkxNzY3OWI5MSJ9fX0="}]}}

##0FalconReign[{"text":"{","color":"dark_purple","bold":true,"italic":false},{"text":"Project Lead","bold":false},{"text":"}","bold":true}]']},clickable:1,SkullOwner:{Id:[I;228091954,-323466738,-1442872035,-656207744],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWE0N2ZjYmFmODFiYTdkZTlkODAzMDNjNTE5MWI5NmNlOTNmZmE4NzZkOWQyZGI0ZWI3NWZmMzgxNzQyYTY0NSJ9fX0="}]}}}
##1HippehWizard{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;1508923483,-548451571,-1134652024,2114694725],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGJiZWM2ZjZmYTJkOGJlZmM5YjlmYTI3YmIzMWFhNzU0MjAzYmE4NTRiYWY5ZGU5MzQzNGFiZGUyOGM0YzBlYyJ9fX0="}]}}}
##2TheRegularMex{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;-88748071,-1657519056,-1539642835,-880500696],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODFmOTVhMjBhMTY3MTlkMzMwMmIxZDJmNmFlYmRkZWNkYTUzYjI0Nzg1NWQyMTkwYzNjOTNkZjcwMzA1YmEyNSJ9fX0="}]}}}
##
##3Captain_Deadpool{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;209955423,-1480768512,-1627586009,-242559102],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWViMTg5YWQ2MWUwYjFiZmI5YTlhMDkyYzg3ODk2NDgzYjM2ZmFlMjkzOTdhYTlmOTQxMjlmNTBlMzc1YWQ4ZiJ9fX0="}]}}}
##4Calverin{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;-1133937096,1368540674,-1820699096,312346006],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}}}
##5TheTypicalMex{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;150747248,1196048,-1991597228,-2037606705],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDI3Njk1YWZlZDhiMzI0N2VjYTVhYzBkZTEyZjNkYTBiMmFmOWMxNjg4NTk5MThkODA0NDA5MzYwMTczMDJjNiJ9fX0="}]}}}
##6CheckMC{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;1594558550,523125009,-1373244110,-1856762766],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmE4ZGZlMGU3ZmM0ODlhZjgwMmU0MWRhMjI0YjNkYzc5YzA5MTZkMjRmMWNjMWM4YzVkMzI4OTE0MTEyNzJkNCJ9fX0="}]}}}



##7Purple_Reign__{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;-733640093,-421573495,-1093492264,-1630073172],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU3Y2FjNzNkYmZmMTZkZWRlY2IwYmY3NmE0MzhiNTI3ZDQ2MDJhYWVkN2U3ZTA3YzgyNDAzYmVjOWQ3MDFhNSJ9fX0="}]}}}
##8II_Owen_II{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;-1341010296,-841331660,-2013570357,-1776315864],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBlYmE2YzM1ODc5MDUzZmRiMGUwMTgzMGU5YzVlYzdkZTc5YTg2NjMwNDFhMzM5ZDU5NjNkZTg0ZmYyODRkOCJ9fX0="}]}}}
##9SmallDeemo{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,SkullOwner:{Id:[I;1880381922,124341920,-1995255335,-1384185846],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA5Y2NiM2U5YWNiZWE5NzI0ZjNhNjMzZTFmNWViMWYwOTU5MmJhYzQ0YTZhZWU3YTA5ODM1MWViNjU5ZWJmZSJ9fX0="}]}}}
##
##10sac1{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,SkullOwner:{Id:[I;-1504769993,-1382790965,-1376971678,1961088044],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWFjNzI0N2M1N2Q1ZjQxNGNkNzQxNTdhMjFiZmJiYjkwYWU1MzkxN2NmY2UyYjc5MTk2NTYwZjkxNzY3OWI5MSJ9fX0="}]}}}
##11GlytchIsYes{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,SkullOwner:{Id:[I;-1357651762,649480109,-1173774944,1509772319],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlmMTMwOGUxNzQxY2IzZTg4YzdlZjE5YzQwOGE5OTQ1MWM1NjI4YThiZTY3ZmU1NWE2YzU2ZmZiMDMzOWM0In19fQ=="}]}}}
##12ChipChase{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,SkullOwner:{Id:[I;-970627315,-833597858,-1572947603,-1524981472],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyYjBiN2U1ZWVmZGVmOTUxYWIyZDczMTk4NzkwMTM1YWNkOGU2Yzc2OTc1Y2I0ZmUyMGNjNThiMGYwYzJjMiJ9fX0="}]}}}
##13GeneralGuy64{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,SkullOwner:{Id:[I;10673278,1186942360,-1375783055,553807283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTI0Y2Y4MGE4YjdmNTNmM2UyMzA3ZTRhMDc1ZjkyMmYyYzZhYjNhZGJlYThiODgzZTY0ZDEzY2Y2NTc0YTQ1YSJ9fX0="}]}}}
##14ImAHumanISwear{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,SkullOwner:{Id:[I;-1969065203,-575257205,-1685213785,74494995],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmZlNTk5ODgxNzg4ZmU1NzMzN2RiNzdlZGJiMTdhMjExOTY5YzVlNjViNDdjOGFiMjVmNjAxYTU4MGEzMjE5ZSJ9fX0="}]}}}
##14Focii_
##14TheRangerMark