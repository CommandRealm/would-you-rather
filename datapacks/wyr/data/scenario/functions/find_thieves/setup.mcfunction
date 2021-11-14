clear @a[team=ft]
gamemode adventure @a[team=ft,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=ft_die] 0 0 0
kill @e[tag=ft_die]


##if scenario needs timer:
scoreboard objectives add ft_timer dummy
scoreboard objectives add ft_seconds dummy {"text":"Time Remaining","color":"yellow","bold":true}

scoreboard objectives add ft_alternate dummy


execute if entity @a[team=ft,tag=tutorial] run schedule function scenario:find_thieves/tutorial_setup 40t
execute unless entity @a[team=ft,tag=tutorial] run schedule function scenario:check_countdown 40t

scoreboard objectives add ft_thief dummy

scoreboard objectives add ft_damage minecraft.custom:minecraft.damage_dealt_resisted


advancement grant @a[team=ft] only minecraft:invisible/find_thieves/punch_thief_1
advancement grant @a[team=ft] only minecraft:invisible/find_thieves/punch_thief_2
advancement grant @a[team=ft] only minecraft:invisible/find_thieves/punch_thief_3
advancement revoke @a[team=ft] only minecraft:invisible/find_thieves/punch_thief_1
advancement revoke @a[team=ft] only minecraft:invisible/find_thieves/punch_thief_2
advancement revoke @a[team=ft] only minecraft:invisible/find_thieves/punch_thief_3
