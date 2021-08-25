
execute unless entity @e[type=area_effect_cloud,tag=arb_delay_start] unless block ~ 60 ~ air run playsound minecraft:block.slime_block.break master @a ~ 60 ~ 0.5 0.75
execute unless entity @e[type=area_effect_cloud,tag=arb_delay_start] unless block ~ 60 ~ air run setblock ~ 60 ~ air destroy
kill @e[type=item,x=15000,y=66,z=0,distance=..100]
scoreboard players set $particle arb_timer 11
function scenario:avoid_radioactive_bats/particle