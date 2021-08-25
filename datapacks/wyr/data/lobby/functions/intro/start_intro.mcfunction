tag @s remove recently_joined
scoreboard players set @s joinsong -10
execute unless entity @a[scores={joinsong=-9..}] run function lobby:intro/in_progress