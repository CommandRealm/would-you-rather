function scenario:fail_scenario
execute unless entity @a[team=ddp,gamemode=adventure] run function scenario:drink_potions/end
stopsound @s record
scoreboard players reset @s ddp_bottles