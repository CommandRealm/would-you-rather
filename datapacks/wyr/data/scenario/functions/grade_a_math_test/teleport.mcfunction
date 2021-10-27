team add gamt
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Grade a math test",tag=blue_select] run team join gamt @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Grade a math test",tag=yellow_select] run team join gamt @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Grade a math test",tag=blue_select] run team modify gamt color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Grade a math test",tag=yellow_select] run team modify gamt color yellow
team modify gamt seeFriendlyInvisibles false
team modify gamt collisionRule never
team modify gamt friendlyFire false
scoreboard players set @a[team=gamt,tag=playing] game_countdown 120



gamemode adventure @a[team=gamt,gamemode=!adventure,tag=playing]
effect give @a[tag=playing,team=gamt,gamemode=adventure] weakness 10000 255 true
effect give @a[tag=playing,team=gamt,gamemode=adventure] blindness 10000 255 true
effect give @a[team=gamt,gamemode=adventure] slowness 10000 255 true
effect give @a[team=gamt,gamemode=adventure] jump_boost 10000 200 true

tp @a[team=gamt,gamemode=adventure] 1976.3 66 2.0 -90 10
spawnpoint @a[team=gamt,gamemode=adventure] 1976 66 2

tellraw @a[team=gamt,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Answer ten math questions with \"True\" or \"False\" correctly.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]


advancement grant @a[team=gamt,tag=playing,gamemode=adventure] only advancements:scenario_math