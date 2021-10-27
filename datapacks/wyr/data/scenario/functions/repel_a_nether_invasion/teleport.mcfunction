team add rani
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=blue_select] run team join rani @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=yellow_select] run team join rani @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=blue_select] run team modify rani color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=yellow_select] run team modify rani color yellow
team modify rani seeFriendlyInvisibles false
team modify rani collisionRule never
team modify rani friendlyFire false
scoreboard players set @a[team=rani,tag=playing] game_countdown 120


gamemode adventure @a[team=rani,gamemode=!adventure,tag=playing]
effect give @a[team=rani,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=rani,gamemode=adventure] weakness 10000 255 true
effect give @a[team=rani,gamemode=adventure] blindness 10000 255 true
effect give @a[team=rani,gamemode=adventure] slowness 10000 255 true
effect give @a[team=rani,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=rani,gamemode=adventure] levitation 1 255 true

tp @a[team=rani,gamemode=adventure] 9985 67 26 225 5
spawnpoint @a[team=rani,gamemode=adventure] 9985 67 26

tellraw @a[team=rani,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\nYour goal: ","color":"gray","bold":true},{"text":"Kill fifteen mobs and return to a beacon.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]