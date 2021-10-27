bossbar set minecraft:bettime players @a
bossbar set minecraft:bettime visible true
scoreboard players set $time bet_bar 200
scoreboard players set $time beat 0
scoreboard players set @a drop_succeed 0
scoreboard players set @a drop_abstain 0
scoreboard players set @a drop_fail 0
gamemode adventure @a[tag=playing,gamemode=!adventure]
##removed function here
effect clear @a[tag=playing]
effect give @a[tag=playing,team=wyr] invisibility 10000 255 true
effect give @a[tag=playing,team=wyr] levitation 10000 255 true
effect give @a[tag=playing,team=wyr] weakness 10000 255 true
effect give @a[tag=playing,team=wyr] fire_resistance 10000 255 true
 
effect give @a[team=select] slowness 10000 255 true
effect give @a[team=select] jump_boost 10000 200 true
tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Now you may cast a vote on whether or not ","color":"aqua"},{"selector":"@a[tag=selecting]"},{"text":" will succeed or fail. If you are correct you will gain points, but answer incorrectly and you'll lose points. You have ","color":"aqua"},{"text":"10","color":"green","underlined":true},{"text":" seconds.","color":"aqua","underlined":false}] 
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
item replace entity @a[team=wyr] hotbar.2 with lime_concrete{display:{Name:'[{"text":"Press ","italic":false,"color":"green"},{"keybind":"key.drop","italic":false},{"text":" to vote: \\"Succeed\\"","color":"green","italic":false}]'},Die:1}

item replace entity @a[team=wyr] hotbar.4 with purple_concrete{display:{Name:'[{"text":"Press ","italic":false,"color":"light_purple"},{"keybind":"key.drop","italic":false},{"text":" to: \\"Abstain\\"","color":"light_purple","italic":false}]'},Die:1}

item replace entity @a[team=wyr] hotbar.6 with red_concrete{display:{Name:'[{"text":"Press ","italic":false,"color":"red"},{"keybind":"key.drop","italic":false},{"text":" to vote: \\"Fail\\"","color":"red","italic":false}]'},Die:1}