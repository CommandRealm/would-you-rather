execute if entity @s[tag=fan_success] run function fans:cheer
execute if entity @s[tag=!fan_success] run function fans:jeer
tag @a remove mute_own_fan
tag @a remove fan_success


execute if entity @s[scores={fans=1}] run playsound minecraft:entity.villager.ambient master @a[tag=playing] ~ ~ ~ 100000 1
execute if entity @s[scores={fans=2}] run playsound minecraft:entity.shulker.ambient master @a[tag=playing] ~ ~ ~ 100000 0.9
execute if entity @s[scores={fans=3}] run playsound minecraft:entity.cat.ambient master @a[tag=playing] ~ ~ ~ 100000 1
execute if entity @s[scores={fans=3}] run playsound minecraft:entity.cat.ambient master @a[tag=playing] ~ ~ ~ 100000 1.5
execute if entity @s[scores={fans=3}] run playsound minecraft:entity.cat.ambient master @a[tag=playing] ~ ~ ~ 100000 2
execute if entity @s[scores={fans=3}] run playsound minecraft:entity.cat.ambient master @a[tag=playing] ~ ~ ~ 100000 0.75
execute if entity @s[scores={fans=3}] run playsound minecraft:entity.cat.ambient master @a[tag=playing] ~ ~ ~ 100000 0.5
execute if entity @s[scores={fans=4}] run playsound minecraft:entity.villager.ambient master @a[tag=playing] ~ ~ ~ 100000 2
execute if entity @s[scores={fans=5}] run playsound minecraft:entity.ender_dragon.ambient master @a[tag=playing] ~ ~ ~ 100000 1
execute if entity @s[scores={fans=6}] run playsound minecraft:entity.creeper.primed master @a[tag=playing] ~ ~ ~ 100000 1
execute if entity @s[scores={fans=7}] run playsound minecraft:entity.villager.yes master @a[tag=playing] ~ ~ ~ 100000 1.1
execute if entity @s[scores={fans=8}] run playsound minecraft:entity.villager.yes master @a[tag=playing] ~ ~ ~ 100000 0.75
execute if entity @s[scores={fans=9}] run playsound minecraft:entity.villager.ambient master @a[tag=playing] ~ ~ ~ 100000 0.9
execute if entity @s[scores={fans=10}] run playsound minecraft:block.note_block.bit master @a[tag=playing] ~ ~ ~ 100000 0.6
execute if entity @s[scores={fans=11}] run playsound minecraft:entity.evoker.prepare_wololo master @a[tag=playing] ~ ~ ~ 100000 0.75
execute if entity @s[scores={fans=12}] run playsound minecraft:entity.elder_guardian.ambient master @a[tag=playing] ~ ~ ~ 100000 2
execute if entity @s[scores={fans=13}] run playsound minecraft:entity.puffer_fish.death master @a[tag=playing] ~ ~ ~ 100000 0.8
execute if entity @s[scores={fans=14}] run playsound minecraft:entity.parrot.ambient master @a[tag=playing] ~ ~ ~ 100000 0
execute if entity @s[scores={fans=15}] run playsound minecraft:entity.zombie.ambient master @a[tag=playing] ~ ~ ~ 100000 2



execute if entity @s[scores={fans=16}] run playsound minecraft:entity.sheep.ambient master @a[tag=playing] ~ ~ ~ 100000 1
execute if entity @s[scores={fans=17}] run playsound minecraft:entity.fox.ambient master @a[tag=playing] ~ ~ ~ 100000 1