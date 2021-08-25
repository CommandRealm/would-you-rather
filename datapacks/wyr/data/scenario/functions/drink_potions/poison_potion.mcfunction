tag @e[type=armor_stand,tag=ddp_spawn,tag=ddp_spawned,limit=1,tag=!ddp_poisoned] add ddp_poisoning
execute as @e[type=armor_stand,tag=ddp_spawn,tag=ddp_spawned,tag=ddp_poisoning] at @s run data modify entity @s HandItems[0].tag.ddp_poison set value 1
tag @e[type=armor_stand,tag=ddp_poisoning] add ddp_poisoned
scoreboard players remove $poison ddp_bottles 1
execute if score $poison ddp_bottles matches 1.. run function scenario:drink_potions/poison_potion