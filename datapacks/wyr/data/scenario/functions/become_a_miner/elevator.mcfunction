execute if score $time bam_timer matches 9999 as @a[tag=playing,team=bam] at @s run playsound minecraft:block.fence_gate.close master @s ~ ~ ~ 1 0

execute if score $time bam_timer matches 9995 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_timer matches 9795 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_timer matches 9770 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 0.15 0

execute if score $time bam_timer matches 9548 as @a[tag=playing,team=bam] at @s run playsound minecraft:block.chest.close master @s ~ ~ ~ 1 0

execute if score $time bam_timer matches 9540 as @a[tag=playing,team=bam] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0


kill @e[tag=bam_elevator,type=falling_block]
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run tp @a[team=bam] ~1 ~1 ~1

execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~ {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~ {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~1 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~ ~2 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~1 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~ ~2 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~1 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~ ~2 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},Tags:["die","bam_elevator"]}

execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~ {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~ {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~ {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~1 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~5 ~2 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~1 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"double"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~5 ~2 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~1 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~5 ~2 {BlockState:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},Tags:["die","bam_elevator"]}

execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~1 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~2 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~1 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~2 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}


execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~3 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~ ~4 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~3 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~2 ~4 ~2 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}

execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~6 ~1 {BlockState:{Name:"minecraft:spruce_fence",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}

execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~7 ~1 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}
execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run summon falling_block ~1 ~8 ~1 {BlockState:{Name:"minecraft:iron_bars",Properties:{east:"false",west:"false",north:"false",south:"false"}},Tags:["die","bam_elevator"]}

execute as @e[tag=bam_shaft,type=area_effect_cloud] at @s run fill ~1 ~8 ~1 ~1 ~11 ~1 iron_bars[east=false,west=false,north=false,south=false] replace air