kill @e[type=item,nbt={Item:{tag:{fishing_item:1}}},distance=..15]
clear @s minecraft:cod
clear @s minecraft:salmon
clear @s minecraft:tropical_fish
clear @s minecraft:pufferfish
clear @s minecraft:bow
clear @s minecraft:enchanted_book
clear @s minecraft:fishing_rod{caught_item:1}
clear @s minecraft:fishing_rod{caught_item:2}
clear @s minecraft:name_tag
clear @s minecraft:nautilus_shell
clear @s minecraft:saddle
clear @s minecraft:lily_pad
clear @s minecraft:bowl
clear @s minecraft:leather
clear @s minecraft:leather_boots
clear @s minecraft:rotten_flesh
clear @s minecraft:stick
clear @s minecraft:string
clear @s minecraft:potion
clear @s minecraft:bone
clear @s minecraft:ink_sac
clear @s minecraft:tripwire_hook


item replace entity @s[scores={gf_item=1}] hotbar.8 with cod{HideFlags:63,display:{Name:'[{"text":"Cod","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=2}] hotbar.8 with salmon{HideFlags:63,display:{Name:'[{"text":"Salmon","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=3}] hotbar.8 with tropical_fish{HideFlags:63,display:{Name:'[{"text":"Tropical Fish","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=4}] hotbar.8 with pufferfish{HideFlags:63,display:{Name:'[{"text":"Pufferfish","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=5}] hotbar.8 with bow{HideFlags:63,display:{Name:'[{"text":"Bow","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=6}] hotbar.8 with enchanted_book{HideFlags:63,display:{Name:'[{"text":"Enchanted Book","italic":false,"color":"blue"}]'},fishing_item:1,Enchantments:[{id:"minecraft:lol",lvl:1}]}
item replace entity @s[scores={gf_item=7}] hotbar.8 with fishing_rod{HideFlags:63,display:{Name:'[{"text":"Fishing Rod","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=8}] hotbar.8 with name_tag{HideFlags:63,display:{Name:'[{"text":"Name Tag","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=9}] hotbar.8 with nautilus_shell{HideFlags:63,display:{Name:'[{"text":"Nautilus Shell","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=10}] hotbar.8 with saddle{HideFlags:63,display:{Name:'[{"text":"Saddle","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=11}] hotbar.8 with lily_pad{HideFlags:63,display:{Name:'[{"text":"Lily Pad","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=12}] hotbar.8 with bowl{HideFlags:63,display:{Name:'[{"text":"Bowl","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=13}] hotbar.8 with leather{HideFlags:63,display:{Name:'[{"text":"Leather","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=14}] hotbar.8 with leather_boots{HideFlags:63,display:{Name:'[{"text":"Leather Boots","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=15}] hotbar.8 with rotten_flesh{HideFlags:63,display:{Name:'[{"text":"Rotten Flesh","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=16}] hotbar.8 with stick{HideFlags:63,display:{Name:'[{"text":"Stick","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=17}] hotbar.8 with string{HideFlags:63,display:{Name:'[{"text":"String","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=18}] hotbar.8 with potion{Potion:"minecraft:water",HideFlags:63,display:{Name:'[{"text":"Bottled Water","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=19}] hotbar.8 with bone{HideFlags:63,display:{Name:'[{"text":"Bone","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=20}] hotbar.8 with ink_sac{HideFlags:63,display:{Name:'[{"text":"Ink Sac","italic":false,"color":"blue"}]'},fishing_item:1}
item replace entity @s[scores={gf_item=21}] hotbar.8 with tripwire_hook{HideFlags:63,display:{Name:'[{"text":"Tripwire Hook","italic":false,"color":"blue"}]'},fishing_item:1}