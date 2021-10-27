# called when the button has been pressed

# counting down
scoreboard players remove $button npab_timer 1


# sounds
execute if score $button npab_timer matches 99 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2
execute if score $button npab_timer matches 94 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2
execute if score $button npab_timer matches 89 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2
execute if score $button npab_timer matches 84 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2
execute if score $button npab_timer matches 79 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2
execute if score $button npab_timer matches 74 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2
execute if score $button npab_timer matches 69 as @a[tag=playing,team=npab] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 2

# particles
execute if score $button npab_timer matches 20 run effect give @a[tag=playing,team=npab] blindness 5 255 true
execute if score $button npab_timer matches 20 as @a[tag=playing,team=npab] at @s run particle explosion_emitter ~ ~1 ~ 1 1 1 0 10
execute if score $button npab_timer matches 20 as @a[tag=playing,team=npab] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0
execute if score $button npab_timer matches 20 as @a[tag=playing,team=npab] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.67
execute if score $button npab_timer matches 20 as @a[tag=playing,team=npab] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.75
execute if score $button npab_timer matches 1 as @a[tag=playing,team=npab,gamemode=adventure] at @s run function scenario:not_push_a_button/fail

