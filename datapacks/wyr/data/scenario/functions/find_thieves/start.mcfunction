scoreboard objectives remove ft_drop_head
scoreboard objectives add ft_drop_head minecraft.dropped:minecraft.player_head
scoreboard objectives add ft_cooldown dummy
scoreboard players set @a[tag=playing,team=ft] ft_cooldown 0

scoreboard players set $time ft_timer 1800
scoreboard players set $ft active_scenario 1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue ft_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Find thieves",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow ft_seconds


##/give @p minecraft:player_head{display:{Name:"{\"text\":\"Boy\"}"},SkullOwner:{Id:[I;-1241706447,286017168,-1591214027,-2019482103],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhMzI5NWU2OWZlMmE5YzQ1OTRmNDE4NGMzOTFlNjhjMmVkMjBiYzdhMjc5YTRiNmM0ZGQ5NzQwNGEwY2JiNiJ9fX0="}]}}} 1

summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1208208203,1277773955,-1792862686,-4740577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjcyNGI1NGM2MGU4OWNmOTQ3YmQwZDdmNTNkNzNkMWIzY2VhNGU0ZGU4OWI5MDNmY2I4ZjNhNWM1ZDM4Yzg3NSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;201335112,-354990775,-1199842225,-2012414366],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU3NWM5YjBmNGRjOTg0YmRkZDFkMTNkYjc3YTA3Y2JkMTllMjFkN2M5N2IyZTFmODVjYjVjYWRiYTUxZmY5NSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1766165252,126504905,-1374452949,610680716],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWYxOGU2YTRhZjdjMjU5YjU4ODE0NDg3ZmQxZjJiNDc3YTQ0YjYxYWI0ZWYwNjlhMmM1NjNkMGY3OGE1Yjg2ZSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2079219547,913326231,-1915678848,-1527191429],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzliZjczNTdjYmJjNGEzN2Y3ODI1ODcyYzhhMGE0Y2QzYTg3NmEwMDBlMTJkMzViOTY5MmU1ZDlkYWNmNGVmNyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;172890742,2097103717,-2142657588,-932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-217673346,-1615245619,-1405178192,1227756283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM2MTBmMTFmMzZkNTJiZjk2NGFkYTA1OTIyM2QyODk5ZWVhYzMwM2ExOTZkOGU4Y2Y3MDAzMGVlNzRjOGYxNSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1580116429,-422818630,-1895951389,-1636914018],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2IwMzg4NDEzZjg1MzkyNzQ0NTliMjQxNjNhMWVjYzkyMzZiNWYwOTYyZTM2NzE4MzI3ZDhhY2MxNTJiMTYxNyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-764046102,289555903,-1842236308,148906847],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRmYWEyNTZlZTM1YzhiNTQwNmVjZmY5YWY1NDQ2N2QwMzU0ODdiNDMzN2Y4ZGY2ZTk0OTViZjM2ODg5NThjZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1557211511,1441743481,-1420206844,721358116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDk0N2RjOTgyM2I1Nzk2NjJlMzZhMTZkZmNlOTUxYzRlNDFkMmUwYWJhM2Q2NWI3YWU3ZmRlNTkxZDg3OWVkIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1701081946,2094615060,-1762119541,2057969947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2NzhlYjcwNzA2NWI1ZWYwZTMwNWMxODQ2ZjAwNThlZjEwNTE3NGEzYzM2M2RkOTBlMmIzMDZjZDliYWJlMyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1519452085,-1142733156,-2011358757,-935766273],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmE1MGJlOWMwZjZhZTkwNTIwODY1MTVkYWEyYjAwZmNlOTNjM2I5N2IzZjgwZmI5MjVkY2NiOTJjYjU0Njk5OCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1052427478,-1125760596,-1811923608,109756420],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBhMmU1MTE0MTA1MWM5MmZjMDQwODY1ZDE0Njk4MmFkNjA4M2Q4MGVmYWVhY2YwNzBmOTBkZmFjZGRkZWY5MSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-643877125,-1539948228,-1737364834,948459280],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU2NDE5MGEyOTEyOTY0NDFiOWZiNTZlYzA5OTFiYjY0ZjdlNmZhNThlMWFiOWYzYzAwZjVhOWY0MTE2YTZlNSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-321636601,-1292743904,-1814244751,-1526071093],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJhNTk2OTc1Y2ViNDliOTA4ZmU5NDAxNTMyNTA0MTM5M2I2OTU2ZTUzZDk4N2RmMjI4MTVhNWE5OWI1ZTc0ZCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1080040201,-1028764667,-1263555419,-1863257677],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmYxOTVjODYzNmU5NjVlYTQ0MDRiZmRkZDA0MzZhMGJmYzg1NmU1Y2VjODJhOTU2OWE3YzQxYWY3NzIzMmUxMyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-160963170,80168786,-1404730481,-643729061],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTEwYTcyNDg0ODNkMmFhOTY0N2YxZjVjMmNhYjRmMDlhMDlhOWZkNTUxYjdiN2MyNmZlYTFjMTgzNWFhNTdjZSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;425635036,-579320692,-1384779830,-1481819164],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDI2NmZiODU2ODZiMWQ4ZmNhMGE0MmQ1MDU0NmQ5Zjg4NzE0YjdhYTI2ZTUzM2I1NmU5NmY3MDVkZTQ4YWZmNCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;646810539,-912699625,-1562877104,-1029150035],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdlYjJjY2ViOWI5N2M2ZmI3ZDU3ZGYwMmNiOTE3YmY5ODFhNmI5ZTlmZmQyOTM2YWY0NDY3YmQ2YzkxMTg1YiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1368109703,-1531621650,-1613459378,602182712],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2FhYTNkYjQ2ZWY1NGM5ZmU4NTExYzQyNTk0MmY4ZDFhZGFiZWM4ZDBlMTZmMjM1ZTdhMGE3OTExYzU4ZTViZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1196454082,101466783,-1627675869,-1257575278],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkNWNjNGUxYjE0OGUyOGM2ZTU2MmQxZjhlMjJlZmM1ZGY4MDZkMjRlNGMxYjMzZjhmZTYwNDRkOWUyZDc1ZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;578311044,-1085977906,-2108696697,-1081682932],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWM0NDk1NDE2YTRjNGQxMmI1ZThmYTZiMTEwOTkzNWJmZmFlZjE5Y2Q2NjIxYThkYmY5ZmNkNTFkM2VhMTRlIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2144558328,-882163121,-1742456713,-1460681288],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZhMGRiZWQxYTM2NGU3ODY4NmZhZGRmMDYzNGZiN2ZmZTQzNDcxMTAzNmY1NGNkOGI5Y2IxMjhlMGZjYjVjNCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;962093240,464798090,-1929191207,-2049723629],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzczYmFlNDg5YWZjMjU4YmZhMTgyNWFiNjQ1ZWJlOWRjMzIzNTFlMmIwYmUxNjg1MTc4ZGRjZmRiZDllMjAifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1498939078,1600210302,-1679739532,1172248636],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBmM2VmMTY3ZTMyMTZlOWFkZDM1ODZmNTlhOWM3ZDA4NWE3ZDQ5YzQ2OWRmZjI0YjdkNjgxZTBkM2ZiOGFlMSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2139599463,-267893430,-2050816774,-1962602185],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJiMTUxNjg5NjRlNjk1ODkxMjJiYjVmNGFhZGMyMzc0YzI5ZmZkM2I5MTQ1ZmQ3NWFmM2FmZDQ5MWQ5YmY3In19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-122698610,1517637468,-1382406541,-967344384],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWJkYmYxNmM2M2Y5NTFiNDg2ZDY0MDViZWE1OTg0YTM3YTZjN2FiNGZmYTgwYWE3NTMxZDc2YjIwNDBhMDE2In19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2010776527,-219593708,-1477217264,-1222357054],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNhYmI1YWI4MmRlMTc4NGRkNWE2YzE5MWZjMzUzMGQ2ODZiMmQyNjY2NTkyMTY2ZDdiYWQ2MTYzNDljMzEyIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1303343391,-337687746,-1905184286,-227829084],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2I1MjYzY2RhY2QxYjZlMDU3YzA4NmMzODEzNjJjYmRjZjIzMzY4NDgzMmI3ZGE2YzhhNTljZmIzNmJmYzlmZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-508523132,872170783,-2142759083,-528182737],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Y0YTMxZjBjMTEyMzY2NzU5OTY5YWRiNDg1YmFhOTQ5YzAxMjdmYzgzZTkyYjQ5M2E3MTg4YmI3YjgyNzVlMiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;277126884,1261061676,-1530570240,1497783112],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Q2MThmNDU1ZTk5YzZhOGVhYWIzZDk0OTk4NGZkMWE0OWFmODgyNjBjNDRiMDFjODZkZWU5YWQ3YyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;796900623,1298284842,-1993952952,-1917058016],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTkxYjQzMWMyNDZiZmQyYTdhNzE3ODEyNTg2ODdiNjg5MDE0YWJmNGFmNmMxMDliMDkxYWZlMWEwZjE0NzcwZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1964839410,708529977,-1733111924,117681984],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I1MWM1MTE0NTFjNWI4NmZlYjUxNzdjNjMxMDQxNTUwMWFmNjE2OTM2ZWYzNTllYTk4N2E1MDJkNWRiYzRhNyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1268049079,683101468,-1904975852,-1269455339],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY1NDVhOWU1Njc1Mjc5ZjFkYTlkZDFlNWQ5MzVjMTExZTQzM2IwZDA0NmM1ZjZhZTcwYmQ1ZDFjMCJ9fX0="}]}}}}}
##summon item 32000 1 0 {Tags:["ft_head","ft_head_m"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1241706447,286017168,-1591214027,-2019482103],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhMzI5NWU2OWZlMmE5YzQ1OTRmNDE4NGMzOTFlNjhjMmVkMjBiYzdhMjc5YTRiNmM0ZGQ5NzQwNGEwY2JiNiJ9fX0="}]}}}}}

##/give @p minecraft:player_head{display:{Name:"{\"text\":\"Asian Girl\"}"},SkullOwner:{Id:[I;-421143402,-1366146613,-1669197690,-1863514547],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmZiNzA5NGNmOGMzYjM0MTBmZmRkNTI0NGZlMjZlMTc0NDc5NWFlMzVkY2RlYWU4NDk0ZDkyMDM5MTU3In19fQ=="}]}}} 1


summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-126211314,-336705450,-1682750085,1345484051],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRkMjZjYzBkMzVhNTY4M2E4MGQ4ZTk5ZTNiNDFmOWEzMmJjOGM1NmEzMzE3OTcyYzZmNDQ5MmFlNzlmZGViIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1579393662,1569082637,-1277710939,1145730637],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODljZjczMWIyMjU4MWU3YWY4ZDM4YjM5ODA0MWQ4ODVlYmQ1N2I2OWY2N2FiYzNlNzkzNzVkMTExMGVhNTU2ZSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1368021964,1404387806,-1380785767,-923775488],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ0MzM4YTllZWNiNzQ0MzFlNWVjNzliMjVlNThhM2Y2NjFlYjZlMDcwZDBjNmZjMTcxNzdkYmYxNmU5ZDkifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1966336729,774914964,-1314971383,-1599969484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGUyOTNkNGM0MTZmZmFmZGM2Yjc2OGE3ZmJkM2YzOTlhOGI4MzZmYjNiYjg3YTIxZTMzZDllMTNkM2E5In19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1031649956,266094599,-1340444483,-1776061431],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3M2Q1ZDI1MGJiMzY1MTYwZmE2NjcxZWFlOTI0NTEyZGQ1ZmI1ZDdiMzE4N2JhMmU4NGQyYWQzZGRhY2NlZCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1410605070,368069086,-1717307323,1676127592],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTZiNzFiODA1YTZhMjhmMjM4NzY5M2MxNmE1MDQyYTEzOWZhNjI4ZTBjM2E4ZGUxMmI4MjhkYWQ1ZjE4YWYifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;652850605,-776519058,-1497557304,-2082962398],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTVmMWE3MjNkNDg1OWY1NWRlNDM3OGU0MTk4NTg3Yzk3N2NiYjc4Nzc2OGIxYjE2YTdiMDYxZjk5YWU1MzRmYSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1851200128,1322535044,-1615863480,-753137554],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQzOWMyYTUyOTc4YzE2MzlmYjhiNGVkMzdjZjMxNGY1NmRlYzE4YzY1OGUyOWNmOTc0ZGVhNmFjNWUzZWQ1OSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1987215504,-528266192,-1827663724,-1312365480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjUxZWNmM2Q0YzZmNjQ2NTMwYTg4OGVlNWI4MDEwY2RiODZlZjNlZDRjOWNiZmM5NmY2MmY1NGM0MTgyYTgifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;496407718,2101496817,-1683064996,-483898014],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ3YTMzNmZlODM5Y2QyODYzYmQ4Nzc5MDczODkxYjVjNzY4M2I1OWY1ZmFjY2FhMmNlNGQ1YzAxYjhkZDYifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;365947368,1788563122,-1090298310,254880411],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk2YWE3MjIyOGZhOGNkNjMyMjk2ZTg1MjU0N2EwMmIzYjI1MWRiYTk1ZDJlOWZjZDA4OTg0NzNmOTg4MzYifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2071836454,-995668790,-1367709986,1573795570],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY1ZjM5ODE1MWFkOGFiY2RlNzJlZTdlNGJlNDkxYzRmMDExYjdiZWUxNzYxNDZlYTUyN2JjZThjMjZmMSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1467831316,1477070490,-1747090730,-525568584],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY0N2M3OTgyYmEyZjhjYWE5OTMzNmFhNDZkNzNhMTZhZjZhYmY3YmQ5MjFlN2Y2MDZlZWNiYzA5YTRkN2EifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1973493373,-233551508,-2130200583,-624875542],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU0YmQzNGY2NzMzOGJlMTE1NDFhOWVlMTNkYTI2YTQ0MjA3YjY2YTQ3YmYxNDFmYzMxNTQzNzQzZTE4ZDk4In19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1820502898,-435335760,-1606459421,-1115606133],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDJkMjEyZWUyNzFmMzI4YWU1ZWUyY2E0MTdjMjEwYTJiOGNkNDBmMjcxYzhmZTM5ZDhhNmVkMWY3NWMyZmQifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2090153928,690635409,-1479263232,-1352736520],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2IyZmQxNjA2Zjc5ODRjMzI0NDZkY2IxNGZjNGRlZDFjNGVhNDQxZTFjYmM4MzhjZGQ2MmJkMTU4NmY5ZDgifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;602784890,-2142091919,-2140944369,-497800675],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQ3MmMxYjM3YTA5OTZiMDUzZWFhNDQwMjMyNTRmYjk2MTViMmIzZWJjNjMyZWM0YmE1ODBiYzlkOTM5ZTFhNyJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-107369367,194527693,-1367147954,1617118129],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDMwMmNkOWEwYWFlODM3NTk1NzhmYTIwODE2NWNmZDZmZTUyODk4ZDZmMDgzNDNhNDgwMmM4YTM5YWQ3ZDZhNSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-254598319,-569292451,-1814861613,262446570],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA0OTgwOTdmMjRkYmY2NGY5MjRmMTVmZDZjZjg5YTU3NWZkNzc0ZWI1MjVhMTkxYTU1OWNiMjNlYjk2ODAifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1372452689,-1584182737,-1430850325,-364851818],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU3NGIzZGI3MDZhNmZlYzQ3MWYyYmQwYTU4OWExNjQyMDY4Nzg3Yzg5NTIyZTljNzlkYjI5ZDNiN2NkYTQxIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;650527581,78332546,-1742725642,1911682927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzk2NGE4ZDNhZmJhYjY5MmQ4ODljODU5YmY5Nzk3NWUwYTQ4YmZhYTk0MmI0MTU4OWUxNWQ3YWVmMDkxIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2071140778,1739146048,-1193735342,-81581234],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQzNzA2YTc2MjBlZjVhNmE0NGYzMTZjNjE2NmU2OTliZDVhYzFhYmFkYTM2NjlkN2I2MDlhZTBlMWQ2MDJhNiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1880212120,672483375,-2125316652,-973171914],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdlNTVlYjQ3OWZjOWMyZDE4YzAxYTJhMWU2ZDU5ZmYxOTRmMTQ0ZjRjOTMzOWEwNTZhNWIzOWYxZjBmM2ZiMCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;556526037,658853858,-2065633710,1328686684],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzNiNDZiN2E5ZGRhYjVmM2VjNDc5NGRmYjcyODc2ODUxZmExNTRmYzA0M2ZhMmI3Y2IyM2FiZGI0YTU1NGYyNiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1467222814,-182500347,-1897353103,-1232519499],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyOWVhOTU0ZDJjYzQ5OWU1NzRlOGRhM2JhMjA1ODY2MGM5ZjhhOGM0NzI2MDI5ZjFlNDg4NmQyODEwMzI3NCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1882442410,-1998241598,-1889381437,-1573845020],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDYyYWE4MzVjNWRlOTY4OTkyNmRjZmU4NzFmYTdjOTQzNGY5NDI2NWFhNjg5MWJhNTg4OGZkNTA4OTVkODQifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1008993463,-1724706216,1047794923,-1910459459],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTU2MTI5OTVmOTJjNGJiYzY0OTRhNWQzYTJhNTQxZmViYjhhNDRiOTE2NDk3MTE0NjNkYjYzZWI1MGZjIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;487404050,1038173744,-1100342532,-1110106702],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzgyZGJhZTQwYWRjMjViNDc5Y2ZiOTVlZDdlNzMwY2ZkNzNiZTQyMDRjODVlZDI3OTI5YmNhN2U0YmEzOWEifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2081572007,-1785311275,-1925687635,1466331754],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWU5NDE5ZjJmN2VlZDc2NTY4NWM3ZGJhZmQ4YjVkNDgzZjIyN2U5ZmNjMGZkNmYzMTk2YzM0ZjQxNWY4ODcifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1590913685,1993033588,-2044622481,-491932590],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlhNWM1NWY4YTg2ZjFjZWYwYmRmZDE3OTA4MmVkZjM5NGFkODRjZWVkZmNjOTU1YjY3YjI3ZjNiY2I2MTQyIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1767990124,317344942,-1885151244,-983702713],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk0NjM2YjBhMWE3NjhkZDQ5YjFmNWZmMWJjMTczZGM4NzdjYzg1YjQyNmQ4YTYyM2QzMjZlNjhkYmRmMCJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1866304996,-1566687089,-1588099518,-1009983201],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzA5Y2U5ZDU2YTExZTFlMWFmYTNkNmNmOTJlNWNlODVkMWFiY2I1NWZhN2YxMjU5YjE2M2Q5MzlkYWEyZWYifX19"}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1486246453,1693272111,-2041697128,-1579857852],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ0Y2FlMWVjZTFmNjc2MDJkY2MzNmYzNmM5Yzk3NGZmYzBjNWYzYmE2ZWNjN2Y2OGQ2N2Q1ZGU3NThhMmVjIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;797891839,-213891461,-1736856207,1127182652],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTY5NDIyNjNlZWNlZmZmY2Y0NjIwOTVjZDc1ZDAwODc4MTA2MmM3MTQyOGQwZDdjNWVhZDg2ZTk1MjE4YzkwIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1674147327,-298694004,-1650926708,-1888360238],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg2NTY1YTAwMmY3Y2ZkNWZmNGM5MzBiZWFlMGY5MzEyOWRlM2JkZWJlZTg3MDZiNTk2OTg3ZDRkOTE3ZjNhZSJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1500708758,813910881,-1470319753,1669130407],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2U3NmQ5NTYxOWMzMTk4MjdiZjM2YWMyMTEyYjhkOGY4OGZkMDEwOTM5NWM3NTIzYmU1OGJiOTQ4MTRhY2NmIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1219988197,349521919,-1511856620,-233727999],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODYxNWEyYzllOTFmMDZmMGI0NGFhMGJmNWUwN2ZkZTYxOGVkOTE4N2MyYjJmNmE0NTQ0OTI1YzQ2ZTE2MjU4ZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1660639537,-469155666,-1422172979,-495628058],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU4ZjkwYjg1NDAxNWYxZGMxOTc4Mzk0M2JhMTdlMDE5OTlmMDY0NTkzMTA0YzYxZDEyOTY2ZDI0MmIyMTY0ZiJ9fX0="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;875628262,-136100962,-1286075838,-1582181051],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjA3YTk3YjJmYzRhZWRhMWRiNjcxYmFlZWMxY2NjODQ5Y2VhN2M3YzVjYjc1M2U4Y2EyZWJkMmViMzA1ZjdmIn19fQ=="}]}}}}}
summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-421143402,-1366146613,-1669197690,-1863514547],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmZiNzA5NGNmOGMzYjM0MTBmZmRkNTI0NGZlMjZlMTc0NDc5NWFlMzVkY2RlYWU4NDk0ZDkyMDM5MTU3In19fQ=="}]}}}}}
##summon item 32000 1 0 {Tags:["ft_head","ft_head_f"],Item:{id:"minecraft:player_head",Count:1b,tag:{}}}


##32015 66 -30

execute positioned 32015 66 -30 run function scenario:find_thieves/spawn_townsperson
execute positioned 32013 66 -14 run function scenario:find_thieves/spawn_townsperson
execute positioned 32006 66 -20 run function scenario:find_thieves/spawn_townsperson


execute positioned 32016 66 -40 run function scenario:find_thieves/spawn_townsperson
execute positioned 31985 66 -39 run function scenario:find_thieves/spawn_townsperson
execute positioned 31978 66 -36 run function scenario:find_thieves/spawn_townsperson
execute positioned 31986 66 -30 run function scenario:find_thieves/spawn_townsperson
execute positioned 31992 66 -26 run function scenario:find_thieves/spawn_townsperson
execute positioned 31989 66 -23 run function scenario:find_thieves/spawn_townsperson
execute positioned 32007 66 -20 run function scenario:find_thieves/spawn_townsperson
execute positioned 31992 66 -20 run function scenario:find_thieves/spawn_townsperson
execute positioned 31995 66 -23 run function scenario:find_thieves/spawn_townsperson
execute positioned 32000 66 -19 run function scenario:find_thieves/spawn_townsperson
execute positioned 32000 66 -13 run function scenario:find_thieves/spawn_townsperson

execute positioned 31972 61 -52 run function scenario:find_thieves/spawn_townsperson
execute positioned 31978 61 -54 run function scenario:find_thieves/spawn_townsperson
execute positioned 31983 61 -52 run function scenario:find_thieves/spawn_townsperson
execute positioned 31986 61 -52 run function scenario:find_thieves/spawn_townsperson
execute positioned 31990 61 -55 run function scenario:find_thieves/spawn_townsperson
execute positioned 32000 61 -56 run function scenario:find_thieves/spawn_townsperson
execute positioned 32008 61 -55 run function scenario:find_thieves/spawn_townsperson

execute positioned 32008 61 -52 run function scenario:find_thieves/spawn_townsperson
execute positioned 32014 61 -52 run function scenario:find_thieves/spawn_townsperson
execute positioned 32017 61 -52 run function scenario:find_thieves/spawn_townsperson
execute positioned 32025 61 -53 run function scenario:find_thieves/spawn_townsperson


execute as @e[type=skeleton,tag=ft_die,sort=random,limit=15] at @s run function scenario:find_thieves/spawn_townsperson

execute as @e[type=skeleton,tag=ft_die,sort=random,limit=5] at @s run summon wolf ~1 ~ ~ {Sitting:1b,Owner:[I; 0, 0, 0, 0],Silent:1b,Tags:["ft_die"],Invulnerable:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.25}],Silent:1b}
execute as @e[type=skeleton,tag=ft_die,sort=random,limit=5] at @s run summon wolf ~-1 ~ ~ {Sitting:1b,Owner:[I; 0, 0, 0, 0],Silent:1b,Tags:["ft_die"],Invulnerable:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.25}],Silent:1b}
execute as @e[type=skeleton,tag=ft_die,sort=random,limit=5] at @s run summon wolf ~1 ~ ~1 {Sitting:1b,Owner:[I; 0, 0, 0, 0],Silent:1b,Tags:["ft_die"],Invulnerable:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.25}],Silent:1b}
execute as @e[type=skeleton,tag=ft_die,sort=random,limit=5] at @s run summon wolf ~ ~ ~-1 {Sitting:1b,Owner:[I; 0, 0, 0, 0],Silent:1b,Tags:["ft_die"],Invulnerable:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.25}],Silent:1b}
effect give @e[type=wolf,tag=ft_die] invisibility 5 255 true

team join ft @e[type=skeleton,tag=ft_die]
effect give @e[type=skeleton,tag=ft_die] resistance 100000 255 true
tag @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=!ft_thief_1,tag=!ft_thief_2,tag=!ft_thief_3] add ft_thief_1
tag @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=!ft_thief_1,tag=!ft_thief_2,tag=!ft_thief_3] add ft_thief_2
tag @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=!ft_thief_1,tag=!ft_thief_2,tag=!ft_thief_3] add ft_thief_3


tag @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=ft_thief_1] add ft_thief
tag @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=ft_thief_2] add ft_thief
tag @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=ft_thief_3] add ft_thief
##

execute as @e[type=skeleton,tag=ft_die] at @s run function scenario:find_thieves/apply_motion

##Generate names

kill @e[type=item,tag=ft_head]

execute as @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=ft_thief_1] at @s run function scenario:find_thieves/name_tree
tag @e[tag=ft_get_thief_tag,type=area_effect_cloud] add ft_thief_1_name
tag @e[tag=ft_get_thief_tag,type=area_effect_cloud] remove ft_get_thief_tag

execute as @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=ft_thief_2] at @s run function scenario:find_thieves/name_tree
tag @e[tag=ft_get_thief_tag,type=area_effect_cloud] add ft_thief_2_name
tag @e[tag=ft_get_thief_tag,type=area_effect_cloud] remove ft_get_thief_tag

execute as @e[type=skeleton,tag=ft_die,sort=random,limit=1,tag=ft_thief_3] at @s run function scenario:find_thieves/name_tree
tag @e[tag=ft_get_thief_tag,type=area_effect_cloud] add ft_thief_3_name
tag @e[tag=ft_get_thief_tag,type=area_effect_cloud] remove ft_get_thief_tag

tag @e[tag=ft_die,type=skeleton] remove ft_f
tag @e[tag=ft_die,type=skeleton] remove ft_m
##

scoreboard players set @a[tag=playing,team=ft] ft_thief 0
scoreboard players set @a[tag=playing,team=ft] ft_timer 0
scoreboard players set @a[tag=playing,team=ft] ft_damage 0
function scenario:find_thieves/active

title @a[team=ft,gamemode=adventure,tag=playing] times 5 30 15


effect give @a[team=ft,gamemode=adventure,tag=playing] resistance 100000 255 true



fill 32035 65 -60 31964 71 -9 minecraft:spruce_fence_gate[facing=north,open=false] replace spruce_fence_gate[facing=north]
fill 32035 65 -60 31964 71 -9 minecraft:spruce_fence_gate[facing=east,open=false] replace spruce_fence_gate[facing=east]
fill 32035 65 -60 31964 71 -9 minecraft:spruce_fence_gate[facing=south,open=false] replace spruce_fence_gate[facing=south]
fill 32035 65 -60 31964 71 -9 minecraft:spruce_fence_gate[facing=west,open=false] replace spruce_fence_gate[facing=west]

fill 32035 72 -60 31964 79 -9 minecraft:spruce_fence_gate[facing=north,open=false] replace spruce_fence_gate[facing=north]
fill 32035 72 -60 31964 79 -9 minecraft:spruce_fence_gate[facing=east,open=false] replace spruce_fence_gate[facing=east]
fill 32035 72 -60 31964 79 -9 minecraft:spruce_fence_gate[facing=south,open=false] replace spruce_fence_gate[facing=south]
fill 32035 72 -60 31964 79 -9 minecraft:spruce_fence_gate[facing=west,open=false] replace spruce_fence_gate[facing=west]


fill 32035 65 -60 31964 71 -9 minecraft:spruce_trapdoor[facing=north,open=true] replace spruce_trapdoor[facing=north]
fill 32035 65 -60 31964 71 -9 minecraft:spruce_trapdoor[facing=east,open=true] replace spruce_trapdoor[facing=east]
fill 32035 65 -60 31964 71 -9 minecraft:spruce_trapdoor[facing=south,open=true] replace spruce_trapdoor[facing=south]
fill 32035 65 -60 31964 71 -9 minecraft:spruce_trapdoor[facing=west,open=true] replace spruce_trapdoor[facing=west]

fill 32035 72 -60 31964 79 -9 minecraft:spruce_trapdoor[facing=north,open=true] replace spruce_trapdoor[facing=north]
fill 32035 72 -60 31964 79 -9 minecraft:spruce_trapdoor[facing=east,open=true] replace spruce_trapdoor[facing=east]
fill 32035 72 -60 31964 79 -9 minecraft:spruce_trapdoor[facing=south,open=true] replace spruce_trapdoor[facing=south]
fill 32035 72 -60 31964 79 -9 minecraft:spruce_trapdoor[facing=west,open=true] replace spruce_trapdoor[facing=west]

fill 32023 61 -49 32023 61 -46 minecraft:oak_trapdoor[facing=east,open=true] replace minecraft:oak_trapdoor
fill 32019 61 -49 32019 61 -46 minecraft:oak_trapdoor[facing=west,open=true] replace minecraft:oak_trapdoor

fill 31980 62 -45 31980 62 -47 minecraft:oak_trapdoor[facing=east,open=false]

fill 31983 67 -32 31980 67 -31 minecraft:oak_trapdoor[facing=north,open=false] replace minecraft:oak_trapdoor

fill 32028 69 -35 32026 69 -35 minecraft:dark_oak_trapdoor[facing=south,open=false]

fill 32028 66 -34 32026 66 -34 minecraft:dark_oak_trapdoor[facing=south,half=top,open=true]

setblock 32025 66 -35 minecraft:dark_oak_trapdoor[facing=west,open=true,half=top]
setblock 32029 66 -35 minecraft:dark_oak_trapdoor[facing=east,open=true,half=top]

fill 32029 74 -19 32033 74 -19 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor

fill 32036 73 -12 32029 74 -11 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor

fill 32017 71 -9 32010 71 -8 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor
fill 32004 72 -8 31997 72 -9 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor
fill 31989 71 -16 31983 71 -14 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor
fill 31973 74 -30 31967 74 -32 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor

advancement grant @a[team=ft,tag=playing,gamemode=adventure] only advancements:scenario_theives