##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=npab] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=npab_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=npab] run schedule function scenario:not_push_a_button/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=5}] run title @a[team=npab,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Not push a button\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=5}] run title @a[team=npab,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=5}] as @a[team=npab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=5}] as @a[team=npab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=75}] run tellraw @a[team=npab,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Not push a button\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=75}] as @a[team=npab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=90}] run tellraw @a[team=npab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Don’t press the button.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=90}] as @a[team=npab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=npab,scores={tutorial=200}] run function scenario:not_push_a_button/tutorial_end


##Effects:
