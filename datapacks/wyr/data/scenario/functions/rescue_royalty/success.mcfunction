function scenario:success_scenario

tellraw @s [{"text":"You saved the captive!","color":"light_purple"}]
execute unless entity @a[team=rap,gamemode=adventure] run function scenario:rescue_royalty/end