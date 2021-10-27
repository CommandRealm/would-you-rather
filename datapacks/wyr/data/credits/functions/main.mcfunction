function credits:pl
function credits:calverin
function credits:hippeh
function credits:check
function credits:typs
function credits:regs
function credits:deadpool
scoreboard players add $time credits 1
execute if score $time credits matches 140.. run function credits:cycle_armor_stand
execute as @a[x=-1000,y=60,z=0,distance=..500] at @s if entity @e[type=armor_stand,tag=show_details,distance=..7] anchored eyes run function credits:raycast