tag @e[type=item,tag=dab_concrete,limit=1,sort=random] add temporary_tag
data modify entity @s BlockState.Name set from entity @e[type=item,tag=dab_concrete,tag=temporary_tag,limit=1,sort=random] Item.id
kill @e[type=item,tag=dab_concrete,tag=temporary_tag]