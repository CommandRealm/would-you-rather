scoreboard players set $time hcm_timer 900
scoreboard players set $hcm active_scenario 1
item replace entity @a[team=hcm,tag=playing] hotbar.0 with bow{Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Bow","color":"gold","italic":false}]'}}
item replace entity @a[team=hcm,tag=playing] hotbar.8 with arrow{display:{Name:'[{"text":"Arrow","color":"gray","italic":false}]'}} 15
scoreboard players set @a[tag=playing] hcm_arrow 50
scoreboard players reset @a[tag=playing] hcm_shoot
scoreboard players set @a[team=hcm,tag=playing] death 0

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue hcm_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow hcm_seconds

execute as @e[type=phantom,x=19000,y=66,z=0,distance=..300] at @s run data merge entity @s {Invulnerable:0}
function scenario:hunt_cave_monsters/active
effect give @a[team=hcm] weakness 10000 255 true