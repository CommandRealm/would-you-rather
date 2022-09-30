execute if score $time bam_old_timer matches 9999 as @a[tag=playing,team=bam_old] at @s run playsound minecraft:block.fence_gate.close master @s ~ ~ ~ 1 0

execute if score $time bam_old_timer matches 9995 as @a[tag=playing,team=bam_old] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_old_timer matches 9795 as @a[tag=playing,team=bam_old] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_old_timer matches 9770 as @a[tag=playing,team=bam_old] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_old_timer matches 9548 as @a[tag=playing,team=bam_old] at @s run playsound minecraft:block.chest.close master @s ~ ~ ~ 1 0

execute if score $time bam_old_timer matches 9540 as @a[tag=playing,team=bam_old] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0


# kill @e[tag=bam_old_elevator,type=falling_block]
kill @e[type=falling_block,tag=bam_old_elevator]
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run tp @a[team=bam_old] ~1 ~1 ~1

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"double"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}


execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~6 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_fence",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~7 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~8 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

# repeated because 1.17 broke it
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"double"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}


execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~6 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_fence",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~7 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~8 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}


# repeated because 1.17 broke it
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"double"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}


execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~6 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_fence",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~7 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~8 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

# repeated because 1.17 broke it
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"double"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}


execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~ {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~2 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~6 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:spruce_fence",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}

execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~7 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}
execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~8 ~1 {Time:1,DropItem:0,BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_old_elevator"]}


execute as @e[tag=bam_old_shaft,type=area_effect_cloud] at @s run fill ~1 ~8 ~1 ~1 ~11 ~1 iron_bars[east=false,west=false,north=false,south=false] replace air