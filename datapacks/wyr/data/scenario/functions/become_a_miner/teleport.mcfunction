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
effect give @a[team=bam,gamemode=adventure] levitation 4 255 true

tp @a[team=bam,gamemode=adventure] 8832 155 -16 -90 20
spawnpoint @a[team=bam,gamemode=adventure] 8836 134 -16 -90


tellraw @a[team=bam,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Use your pickaxe to break one diamond ore and hope for 3 diamonds. Choose carefully!","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]