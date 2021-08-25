scoreboard players set @s death 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:tripwire_hook",Count:1b,tag:{HideFlags:63,Enchantments:[{id:"s",lvl:1}],display:{Name:'[{"text":"Tower Key","color":"yellow","italic":false}]'}}},Tags:["rap_need_movement"]}

execute store result entity @e[type=item,tag=rap_need_movement,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get @s rap_x
execute store result entity @e[type=item,tag=rap_need_movement,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get @s rap_y
execute store result entity @e[type=item,tag=rap_need_movement,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get @s rap_z
tag @e[type=item,tag=rap_need_movement,sort=nearest,limit=1] remove rap_need_movement
function scenario:rescue_royalty/fail