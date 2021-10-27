tag @s remove unlock_f_10
tag @s remove unlock_f_11
tag @s remove unlock_f_12
tag @s remove unlock_f_13
tag @s remove unlock_f_14
tag @s remove unlock_f_15


tag @s remove unlock_b_10
tag @s remove unlock_b_11
tag @s remove unlock_b_12
tag @s remove unlock_b_13
tag @s remove unlock_b_14
tag @s remove unlock_b_15

tag @s remove unlock_p_27
tag @s remove unlock_p_28
tag @s remove unlock_p_29
tag @s remove unlock_p_30
tag @s remove unlock_p_31
tag @s remove unlock_p_32
tag @s remove unlock_p_33
tag @s remove unlock_p_34
tag @s remove unlock_p_35
tag @s remove unlock_p_36
tag @s remove unlock_p_37
tag @s remove unlock_p_38
tag @s remove unlock_p_39
tag @s remove unlock_p_40
tag @s remove unlock_p_41
tag @s remove unlock_p_42
tag @s remove unlock_p_43
tag @s remove unlock_p_44
tag @s remove unlock_p_45
tag @s remove unlock_p_46
tag @s remove unlock_p_47
tag @s remove unlock_p_48
tag @s remove unlock_p_49
tag @s remove unlock_p_50


scoreboard players set @s banners 0
scoreboard players set @s podium 0
scoreboard players set @s fans 0


scoreboard players set @s stats_games 0
scoreboard players set @s stats_wins 0
scoreboard players set @s stats_scenarios 0
scoreboard players set @s stats_successes 0
scoreboard players set @s stats_fails 0
scoreboard players set @s stats_awards 0

advancement revoke @s everything
scoreboard players reset @s advance_jump
scoreboard players reset @s advance_sneak

tag @s remove admin
tag @s remove builder
tag @s remove building
tag @s remove builder


function general:update_roles
scoreboard players set @s prefix -1
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5

execute if entity @s[tag=has_pc] run scoreboard players set @s prefix -2
execute if entity @s[tag=has_melon] run scoreboard players set @s prefix -3

execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7