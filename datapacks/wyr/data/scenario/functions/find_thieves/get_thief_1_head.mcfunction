setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @e[type=skeleton,tag=ft_thief_1,limit=1] ArmorItems[3].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @e[type=skeleton,tag=ft_thief_1,limit=1] ArmorItems[3].tag
setblock 32000 0 0 air
setblock 32000 0 0 oak_sign{Text1:'[{"selector":"@e[type=area_effect_cloud,tag=ft_thief_1_name,limit=1]","italic":false,"color":"yellow"}]',Text2:'',Text3:'',Text4:''} destroy
data modify block 0 0 0 Items[{Slot:0b}].tag.display.Name set from block 32000 0 0 Text1
loot replace entity @s hotbar.0 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.1 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.2 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.3 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.4 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.5 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.6 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.7 1 mine 0 0 0 stone{drop_contents:true}
loot replace entity @s hotbar.8 1 mine 0 0 0 stone{drop_contents:true}