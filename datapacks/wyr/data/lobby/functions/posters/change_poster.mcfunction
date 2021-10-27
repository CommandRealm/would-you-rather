scoreboard players add $poster poster_time 1
execute if score $poster poster_time matches 8.. run scoreboard players set $poster poster_time 1
execute if score $poster poster_time matches 1 run function lobby:posters/boom_doom
execute if score $poster poster_time matches 2 run function lobby:posters/dragon_wars
execute if score $poster poster_time matches 3 run function lobby:posters/build_party
execute if score $poster poster_time matches 4 run function lobby:posters/stealthiators
execute if score $poster poster_time matches 5 run function lobby:posters/cc
execute if score $poster poster_time matches 6 run function lobby:posters/dota
execute if score $poster poster_time matches 7 run function lobby:posters/cr
scoreboard players set $time poster_time 200