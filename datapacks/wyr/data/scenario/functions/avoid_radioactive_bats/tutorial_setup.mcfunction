tag @a[team=arb,tag=playing] add in_tutorial
gamemode spectator @a[team=arb]
title @a[team=arb] times 5 40 5
scoreboard players set @a[team=arb] tutorial 0
kill @e[type=armor_stand,tag=arb_tutorial]
summon armor_stand 15009 70 -9 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["arb_tutorial","tutorial_marker"],Rotation:[45f,40f]}
function scenario:avoid_radioactive_bats/tutorial

clone 14991 7 -9 15009 7 9 14991 60 -9


summon bat 15000 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon bat 15000 71 -5 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}
summon bat 15000 71 5 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon bat 15005 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}
summon bat 14995 71 0 {Tags:["arb_die","arb_bat"],Invulnerable:1b,Silent:1b}

summon area_effect_cloud 15000 71 0 {Duration:160,Tags:["arb_delay_start"]}