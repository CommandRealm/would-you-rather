team add bam
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=blue_select] run team join bam @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=yellow_select] run team join bam @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=blue_select] run team modify bam color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=yellow_select] run team modify bam color yellow
team modify bam seeFriendlyInvisibles false
team modify bam collisionRule never
team modify bam friendlyFire false
scoreboard players set @a[team=bam,tag=playing] game_countdown 120

gamemode adventure @a[team=bam,gamemode=!adventure,tag=playing]
effect give @a[team=bam,gamemode=adventure] blindness 10000 255 true
effect give @a[team=bam,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=bam,gamemode=adventure] slowness 10000 255 true
effect give @a[team=bam,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=bam,gamemode=adventure] levitation 1 255 true

tp @a[team=bam,gamemode=adventure] 8998 89 -1 -90 0
spawnpoint @a[team=bam,gamemode=adventure] 9002 66 -1


tellraw @a[team=bam,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Use a Fortune pickaxe to obtain seven diamonds.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]