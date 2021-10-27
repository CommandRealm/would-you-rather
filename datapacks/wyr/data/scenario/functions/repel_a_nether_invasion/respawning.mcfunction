# called while a player is respawning


tp @a[tag=playing,scores={rani_d_cool=58},team=rani_dead] 10000 1 0
scoreboard players remove @a[tag=playing,scores={rani_d_cool=1..},team=rani_dead] rani_d_cool 1
execute as @a[tag=playing,scores={rani_d_cool=0},team=rani_dead] at @s run function scenario:repel_a_nether_invasion/undead/respawn