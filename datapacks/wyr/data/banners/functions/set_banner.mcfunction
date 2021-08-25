kill @e[type=armor_stand,tag=banner_head]
execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s if block ~ ~ ~ #banners[facing=north] run summon armor_stand ~ ~-1.45 ~0.25 {Small:1b,Tags:["banner_head"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.0f]},Rotation:[180f,0f]}

execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s if block ~ ~ ~ #banners[facing=west] run summon armor_stand ~0.25 ~-1.45 ~ {Small:1b,Tags:["banner_head"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.0f]},Rotation:[90f,0f]}

execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s if block ~ ~ ~ #banners[facing=south] run summon armor_stand ~ ~-1.45 ~-0.25 {Small:1b,Tags:["banner_head"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.0f]},Rotation:[0f,0f]}

execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s if block ~ ~ ~ #banners[facing=east] run summon armor_stand ~-0.25 ~-1.45 ~ {Small:1b,Tags:["banner_head"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.0f]},Rotation:[-90f,0f]}
loot replace entity @e[tag=banner_head,type=armor_stand] armor.head loot minecraft:head



##This becomes brown because fill replaces can't overwrite the same color and brown isn't used at all (yet)
execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ brown_wall_banner[facing=north] replace #banners[facing=north]
execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ brown_wall_banner[facing=west] replace #banners[facing=west]
execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ brown_wall_banner[facing=south] replace #banners[facing=south]
execute as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ brown_wall_banner[facing=east] replace #banners[facing=east]




##execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=north] replace #banners[facing=north]
##execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=west] replace #banners[facing=west]
##execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=south] replace #banners[facing=south]
##execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=east] replace #banners[facing=east]

execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=north] replace #banners[facing=north]
execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=west] replace #banners[facing=west]
execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=south] replace #banners[facing=south]
execute if entity @s[scores={banners=0}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=east] replace #banners[facing=east]

execute if entity @s[scores={banners=1}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=north]{Patterns:[{Pattern:"flo",Color:4}]} replace #banners[facing=north]
execute if entity @s[scores={banners=1}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=west]{Patterns:[{Pattern:"flo",Color:4}]} replace #banners[facing=west]
execute if entity @s[scores={banners=1}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=south]{Patterns:[{Pattern:"flo",Color:4}]} replace #banners[facing=south]
execute if entity @s[scores={banners=1}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=east]{Patterns:[{Pattern:"flo",Color:4}]} replace #banners[facing=east]


execute if entity @s[scores={banners=2}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=north]{Patterns:[{Pattern:"glb",Color:13}]} replace #banners[facing=north]
execute if entity @s[scores={banners=2}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=west]{Patterns:[{Pattern:"glb",Color:13}]} replace #banners[facing=west]
execute if entity @s[scores={banners=2}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=south]{Patterns:[{Pattern:"glb",Color:13}]} replace #banners[facing=south]
execute if entity @s[scores={banners=2}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=east]{Patterns:[{Pattern:"glb",Color:13}]} replace #banners[facing=east]

execute if entity @s[scores={banners=3}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=north]{Patterns:[{Pattern:"sku",Color:14}]} replace #banners[facing=north]
execute if entity @s[scores={banners=3}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=west]{Patterns:[{Pattern:"sku",Color:14}]} replace #banners[facing=west]
execute if entity @s[scores={banners=3}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=south]{Patterns:[{Pattern:"sku",Color:14}]} replace #banners[facing=south]
execute if entity @s[scores={banners=3}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=east]{Patterns:[{Pattern:"sku",Color:14}]} replace #banners[facing=east]

execute if entity @s[scores={banners=4}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=north]{Patterns:[{Pattern:"pig",Color:6}]} replace #banners[facing=north]
execute if entity @s[scores={banners=4}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=west]{Patterns:[{Pattern:"pig",Color:6}]} replace #banners[facing=west]
execute if entity @s[scores={banners=4}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=south]{Patterns:[{Pattern:"pig",Color:6}]} replace #banners[facing=south]
execute if entity @s[scores={banners=4}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=east]{Patterns:[{Pattern:"pig",Color:6}]} replace #banners[facing=east]

execute if entity @s[scores={banners=5}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ red_wall_banner[facing=north]{Patterns:[{Pattern:"moj",Color:0}]} replace #banners[facing=north]
execute if entity @s[scores={banners=5}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ red_wall_banner[facing=west]{Patterns:[{Pattern:"moj",Color:0}]} replace #banners[facing=west]
execute if entity @s[scores={banners=5}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ red_wall_banner[facing=south]{Patterns:[{Pattern:"moj",Color:0}]} replace #banners[facing=south]
execute if entity @s[scores={banners=5}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ red_wall_banner[facing=east]{Patterns:[{Pattern:"moj",Color:0}]} replace #banners[facing=east]

execute if entity @s[scores={banners=6}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=north]{Patterns:[{Color:12,Pattern:"sc"},{Color:15,Pattern:"hhb"},{Color:12,Pattern:"hhb"},{Color:8,Pattern:"tl"},{Color:3,Pattern:"cbo"},{Color:11,Pattern:"bs"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=6}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=west]{Patterns:[{Color:12,Pattern:"sc"},{Color:15,Pattern:"hhb"},{Color:12,Pattern:"hhb"},{Color:8,Pattern:"tl"},{Color:3,Pattern:"cbo"},{Color:11,Pattern:"bs"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=6}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=south]{Patterns:[{Color:12,Pattern:"sc"},{Color:15,Pattern:"hhb"},{Color:12,Pattern:"hhb"},{Color:8,Pattern:"tl"},{Color:3,Pattern:"cbo"},{Color:11,Pattern:"bs"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=6}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=east]{Patterns:[{Color:12,Pattern:"sc"},{Color:15,Pattern:"hhb"},{Color:12,Pattern:"hhb"},{Color:8,Pattern:"tl"},{Color:3,Pattern:"cbo"},{Color:11,Pattern:"bs"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=7}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=north]{Patterns:[{Pattern:"bri",Color:8},{Pattern:"gru",Color:15}]} replace #banners[facing=north]
execute if entity @s[scores={banners=7}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=west]{Patterns:[{Pattern:"bri",Color:8},{Pattern:"gru",Color:15}]} replace #banners[facing=west]
execute if entity @s[scores={banners=7}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=south]{Patterns:[{Pattern:"bri",Color:8},{Pattern:"gru",Color:15}]} replace #banners[facing=south]
execute if entity @s[scores={banners=7}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ gray_wall_banner[facing=east]{Patterns:[{Pattern:"bri",Color:8},{Pattern:"gru",Color:15}]} replace #banners[facing=east]

execute if entity @s[scores={banners=8}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=north]{Patterns:[{Color:1,Pattern:"drs"},{Color:4,Pattern:"dls"},{Color:15,Pattern:"bt"},{Color:15,Pattern:"tt"},{Color:15,Pattern:"bo"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=8}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=west]{Patterns:[{Color:1,Pattern:"drs"},{Color:4,Pattern:"dls"},{Color:15,Pattern:"bt"},{Color:15,Pattern:"tt"},{Color:15,Pattern:"bo"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=8}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=south]{Patterns:[{Color:1,Pattern:"drs"},{Color:4,Pattern:"dls"},{Color:15,Pattern:"bt"},{Color:15,Pattern:"tt"},{Color:15,Pattern:"bo"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=8}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=east]{Patterns:[{Color:1,Pattern:"drs"},{Color:4,Pattern:"dls"},{Color:15,Pattern:"bt"},{Color:15,Pattern:"tt"},{Color:15,Pattern:"bo"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=9}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=north]{Patterns:[{Pattern:"gru",Color:9},{Pattern:"mc",Color:5},{Pattern:"gra",Color:2}]} replace #banners[facing=north]
execute if entity @s[scores={banners=9}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=west]{Patterns:[{Pattern:"gru",Color:9},{Pattern:"mc",Color:5},{Pattern:"gra",Color:2}]} replace #banners[facing=west]
execute if entity @s[scores={banners=9}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=south]{Patterns:[{Pattern:"gru",Color:9},{Pattern:"mc",Color:5},{Pattern:"gra",Color:2}]} replace #banners[facing=south]
execute if entity @s[scores={banners=9}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=east]{Patterns:[{Pattern:"gru",Color:9},{Pattern:"mc",Color:5},{Pattern:"gra",Color:2}]} replace #banners[facing=east]

execute if entity @s[scores={banners=10}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=north]{Patterns:[{Color:6,Pattern:"ss"},{Color:6,Pattern:"sku"},{Color:6,Pattern:"hhb"},{Color:6,Pattern:"ts"},{Color:6,Pattern:"bo"},{Color:6,Pattern:"ms"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=10}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=west]{Patterns:[{Color:6,Pattern:"ss"},{Color:6,Pattern:"sku"},{Color:6,Pattern:"hhb"},{Color:6,Pattern:"ts"},{Color:6,Pattern:"bo"},{Color:6,Pattern:"ms"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=10}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=south]{Patterns:[{Color:6,Pattern:"ss"},{Color:6,Pattern:"sku"},{Color:6,Pattern:"hhb"},{Color:6,Pattern:"ts"},{Color:6,Pattern:"bo"},{Color:6,Pattern:"ms"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=10}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=east]{Patterns:[{Color:6,Pattern:"ss"},{Color:6,Pattern:"sku"},{Color:6,Pattern:"hhb"},{Color:6,Pattern:"ts"},{Color:6,Pattern:"bo"},{Color:6,Pattern:"ms"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=11}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=north]{Patterns:[{Color:15,Pattern:"dls"},{Color:5,Pattern:"cr"},{Color:0,Pattern:"mc"},{Color:12,Pattern:"hhb"},{Color:5,Pattern:"cbo"},{Color:8,Pattern:"bs"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=11}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=west]{Patterns:[{Color:15,Pattern:"dls"},{Color:5,Pattern:"cr"},{Color:0,Pattern:"mc"},{Color:12,Pattern:"hhb"},{Color:5,Pattern:"cbo"},{Color:8,Pattern:"bs"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=11}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=south]{Patterns:[{Color:15,Pattern:"dls"},{Color:5,Pattern:"cr"},{Color:0,Pattern:"mc"},{Color:12,Pattern:"hhb"},{Color:5,Pattern:"cbo"},{Color:8,Pattern:"bs"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=11}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ lime_wall_banner[facing=east]{Patterns:[{Color:15,Pattern:"dls"},{Color:5,Pattern:"cr"},{Color:0,Pattern:"mc"},{Color:12,Pattern:"hhb"},{Color:5,Pattern:"cbo"},{Color:8,Pattern:"bs"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=12}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"sc"},{Color:11,Pattern:"bri"},{Color:3,Pattern:"flo"},{Color:0,Pattern:"flo"},{Color:11,Pattern:"tt"},{Color:3,Pattern:"gru"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=12}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=west]{Patterns:[{Color:0,Pattern:"sc"},{Color:11,Pattern:"bri"},{Color:3,Pattern:"flo"},{Color:0,Pattern:"flo"},{Color:11,Pattern:"tt"},{Color:3,Pattern:"gru"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=12}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"sc"},{Color:11,Pattern:"bri"},{Color:3,Pattern:"flo"},{Color:0,Pattern:"flo"},{Color:11,Pattern:"tt"},{Color:3,Pattern:"gru"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=12}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ blue_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"sc"},{Color:11,Pattern:"bri"},{Color:3,Pattern:"flo"},{Color:0,Pattern:"flo"},{Color:11,Pattern:"tt"},{Color:3,Pattern:"gru"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=13}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"cbo"},{Color:4,Pattern:"cs"},{Color:1,Pattern:"ms"},{Color:4,Pattern:"bo"},{Color:4,Pattern:"ts"},{Color:4,Pattern:"hhb"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=13}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=west]{Patterns:[{Color:0,Pattern:"cbo"},{Color:4,Pattern:"cs"},{Color:1,Pattern:"ms"},{Color:4,Pattern:"bo"},{Color:4,Pattern:"ts"},{Color:4,Pattern:"hhb"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=13}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"cbo"},{Color:4,Pattern:"cs"},{Color:1,Pattern:"ms"},{Color:4,Pattern:"bo"},{Color:4,Pattern:"ts"},{Color:4,Pattern:"hhb"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=13}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ light_blue_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"cbo"},{Color:4,Pattern:"cs"},{Color:1,Pattern:"ms"},{Color:4,Pattern:"bo"},{Color:4,Pattern:"ts"},{Color:4,Pattern:"hhb"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=14}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=north]{Patterns:[{Color:15,Pattern:"tts"},{Color:0,Pattern:"cs"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"sku"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=14}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=west]{Patterns:[{Color:15,Pattern:"tts"},{Color:0,Pattern:"cs"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"sku"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=14}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=south]{Patterns:[{Color:15,Pattern:"tts"},{Color:0,Pattern:"cs"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"sku"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=14}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ white_wall_banner[facing=east]{Patterns:[{Color:15,Pattern:"tts"},{Color:0,Pattern:"cs"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"sku"}]} replace #banners[facing=east]

execute if entity @s[scores={banners=15}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=north]{Patterns:[{Color:4,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:4,Pattern:"bt"},{Color:15,Pattern:"bs"},{Color:15,Pattern:"hh"}]} replace #banners[facing=north]
execute if entity @s[scores={banners=15}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=west]{Patterns:[{Color:4,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:4,Pattern:"bt"},{Color:15,Pattern:"bs"},{Color:15,Pattern:"hh"}]} replace #banners[facing=west]
execute if entity @s[scores={banners=15}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=south]{Patterns:[{Color:4,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:4,Pattern:"bt"},{Color:15,Pattern:"bs"},{Color:15,Pattern:"hh"}]} replace #banners[facing=south]
execute if entity @s[scores={banners=15}] as @e[type=area_effect_cloud,tag=lobby_banner] at @s run fill ~ ~ ~ ~ ~ ~ black_wall_banner[facing=east]{Patterns:[{Color:4,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:4,Pattern:"bt"},{Color:15,Pattern:"bs"},{Color:15,Pattern:"hh"}]} replace #banners[facing=east]