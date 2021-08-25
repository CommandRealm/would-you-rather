scoreboard players set $time arb_timer 600
scoreboard players set $arb active_scenario 1
function scenario:avoid_radioactive_bats/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue arb_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow arb_seconds
summon area_effect_cloud 15000 71 0 {Duration:50,Tags:["arb_delay_start"]}
effect give @a[tag=playing,team=arb,gamemode=adventure] invisibility 10000 255 true


summon bat 15000 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon bat 15000 71 -5 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}
summon bat 15000 71 5 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon bat 15005 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}
summon bat 14995 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

##second of same spawns
summon bat 15000 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon bat 14991 71 9 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}
summon bat 14991 71 -9 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon bat 15009 71 -9 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}
summon bat 15009 71 9 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

##

effect give @a[tag=playing,team=arb,gamemode=adventure] invisibility 10000 255 true