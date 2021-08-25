tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"selector":"@a[scores={fake_awards=0},tag=playing,tag=award_winner]"}] 
scoreboard players add @a[scores={fake_awards=0},tag=playing,tag=award_winner] stats_awards 1
execute as @a[scores={fake_awards=0},tag=playing,tag=award_winner] at @s run scoreboard players operation @s adjust_points = $points awards
execute as @a[scores={fake_awards=0},tag=playing,tag=award_winner] at @s if score $points awards matches 2.. run tellraw @s [{"text":"+","color":"green"},{"score":{"objective":"awards","name":"$points"},"color":"green"},{"text":" points","color":"green"}]
execute as @a[scores={fake_awards=0},tag=playing,tag=award_winner] at @s if score $points awards matches 1 run tellraw @s [{"text":"+","color":"green"},{"score":{"objective":"awards","name":"$points"},"color":"green"},{"text":" point","color":"green"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
scoreboard players set $clap clap 50
tag @e[tag=choose_award,type=area_effect_cloud] add chosen_award
tag @e[tag=choose_award,type=area_effect_cloud] remove choose_award
execute at @a[scores={fake_awards=0},tag=playing,tag=award_winner] run summon firework_rocket ~ ~3 ~ {LifeTime:35,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;2651799],FadeColors:[I;3887386,14602026]}]}}}}