clear @s
setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:0b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:0b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:0b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.0 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:1b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:1b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:1b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.1 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:2b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:2b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:2b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.2 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:3b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:3b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:3b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.3 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:4b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:4b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:4b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.4 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy 
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:5b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:5b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:5b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.5 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:6b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:6b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:6b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.6 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:7b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:7b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:7b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.7 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:8b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:8b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:8b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s hotbar.8 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:9b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:9b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:9b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.0 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:10b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:10b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:10b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.1 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:11b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:11b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:11b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.2 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:12b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:12b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:12b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.3 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:13b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:13b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:13b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.4 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:14b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:14b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:14b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.5 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:15b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:15b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:15b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.6 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:16b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:16b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:16b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.7 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:17b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:17b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:17b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.8 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:18b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:18b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:18b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.9 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:19b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:19b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:19b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.10 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:20b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:20b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:20b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.11 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:21b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:21b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:21b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.12 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:22b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:22b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:22b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.13 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:23b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:23b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:23b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.14 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:24b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:24b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:24b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.15 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:25b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:25b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:25b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.16 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:26b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:26b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:26b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.17 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:27b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:27b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:27b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.18 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:28b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:28b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:28b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.19 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:29b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:29b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:29b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.20 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:30b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:30b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:30b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.21 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:31b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:31b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:31b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.22 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:32b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:32b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:32b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.23 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:33b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:33b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:33b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.24 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:34b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:34b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:35b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.25 1 mine 0 0 0 stone{drop_contents:true}

setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 0 0 Items[{Slot:0b}].id set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:35b}].id
data modify block 0 0 0 Items[{Slot:0b}].tag set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:35b}].tag
data modify block 0 0 0 Items[{Slot:0b}].Count set from entity @p[gamemode=adventure,tag=playing] Inventory[{Slot:35b}].Count
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s inventory.26 1 mine 0 0 0 stone{drop_contents:true}
