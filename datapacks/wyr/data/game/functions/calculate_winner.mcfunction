tag @a remove got_placement
scoreboard objectives remove fake_points
scoreboard objectives add fake_points dummy
scoreboard players set $check_place fake_points 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
tellraw @a[tag=playing] {"text":"\n\n"}
tellraw @a [{"text":"Would ","color":"blue","bold":true},{"text":"You ","color":"aqua","bold":true},{"text":"Rather\n","color":"yellow","bold":true}]
team join aqua @a[scores={fake_points=0},tag=playing]
execute as @a[scores={fake_points=0},tag=playing] run tellraw @a [{"text":"Victor: ","color":"yellow"},{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
scoreboard players add @a[scores={fake_points=0},tag=playing] stats_wins 1
team join dark_aqua @a[tag=playing]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a[scores={fake_points=0},tag=playing] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[scores={fake_points=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"points","name":"@s"},"color":"green"}]
tag @a remove got_placement



tag @a remove potential_cosmetic
tag @a[tag=playing] add potential_cosmetic
function end:players
schedule function gene:won 60t