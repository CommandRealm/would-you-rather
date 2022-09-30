team add bam_old
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=blue_select] run team join bam_old @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=yellow_select] run team join bam_old @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=blue_select] run team modify bam_old color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=yellow_select] run team modify bam_old color yellow
team modify bam_old seeFriendlyInvisibles false
team modify bam_old collisionRule never
team modify bam_old friendlyFire false
scoreboard players set @a[team=bam_old,tag=playing] game_countdown 120

gamemode adventure @a[team=bam_old,gamemode=!adventure,tag=playing]
effect give @a[team=bam_old,gamemode=adventure] blindness 10000 255 true
effect give @a[team=bam_old,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=bam_old,gamemode=adventure] slowness 10000 255 true
effect give @a[team=bam_old,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=bam_old,gamemode=adventure] levitation 1 255 true

tp @a[team=bam_old,gamemode=adventure] 8998 89 -1 -90 0
spawnpoint @a[team=bam_old,gamemode=adventure] 9002 66 -1


tellraw @a[team=bam_old,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Use a Fortune pickaxe to obtain seven diamonds.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]