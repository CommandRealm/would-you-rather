function scenario:fail_scenario
execute unless entity @a[team=rani,gamemode=adventure] run function scenario:repel_a_nether_invasion/end

# code to make us respawn
execute if entity @a[team=rani,gamemode=adventure] run gamemode adventure
execute if entity @a[team=rani,gamemode=adventure] run function scenario:repel_a_nether_invasion/undead/die
