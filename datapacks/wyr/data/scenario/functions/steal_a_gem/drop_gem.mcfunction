data modify block 0 2 0 Items set from entity @s Inventory
loot spawn ~ ~ ~ mine 0 2 0
#summon item 0 10 0 {PickupDelay:0s,Tags:["rab_tp_to_map"],Item:{id:"minecraft:player_head",Count:1b,tag:{rab_gem:1b,HideFlags:63,display:{Name:'[{"text":"✧","color":"dark_aqua","italic":false},{"text":" Gem ","color":"aqua"},{"text":"✧","color":"dark_aqua"}]'},SkullOwner:{Id:[I;1779249861,-1945615709,-1110092384,68104524],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTY0ZjI1Y2ZmZjc1NGYyODdhOTgzOGQ4ZWZlMDM5OTgwNzNjMjJkZjdhOWQzMDI1YzQyNWUzZWQ3ZmY1MmMyMCJ9fX0="}]}}}}}
#execute as @e[type=item,tag=rab_tp_to_map] at @s store result entity @s Pos[0] double 0.01 run scoreboard players get @p[team=rab,gamemode=adventure,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_gem:1b}}]}] rab_x
#execute as @e[type=item,tag=rab_tp_to_map] at @s store result entity @s Pos[1] double 0.01 run scoreboard players get @p[team=rab,gamemode=adventure,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_gem:1b}}]}] rab_y
#execute as @e[type=item,tag=rab_tp_to_map] at @s store result entity @s Pos[2] double 0.01 run scoreboard players get @p[team=rab,gamemode=adventure,nbt={Inventory:[{id:"minecraft:player_head",tag:{rab_gem:1b}}]}] rab_z
#execute as @e[type=item,tag=rab_tp_to_map] at @s run data modify entity @s Motion[1] set value 0.45
#execute as @e[type=item,tag=rab_tp_to_map] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 2
#tag @e[type=item,tag=rab_tp_to_map] remove rab_tp_to_map



tellraw @a[tag=playing,team=rab,gamemode=adventure,scores={death=0}] [{"text":"✧","color":"dark_aqua"},{"text":" The carrier of the gem has fallen. Pick up the gem and get to the truck! ","color":"aqua"},{"text":"✧","color":"dark_aqua"}]