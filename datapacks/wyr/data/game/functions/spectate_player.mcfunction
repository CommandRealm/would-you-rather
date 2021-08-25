##function game:unspectate_player
execute unless entity @a[tag=playing,gamemode=adventure,distance=..5] run scoreboard players set @s[scores={spectator=20..}] spectator 11
tp @s @p[tag=playing,gamemode=adventure]
execute at @s if entity @a[gamemode=adventure,distance=..2,team=sitw] run team join sitw
execute at @s if entity @a[gamemode=adventure,distance=..2,team=gamt] run team join gamt
execute at @s if entity @a[gamemode=adventure,distance=..2,team=bam] run team join bam
execute at @s if entity @a[gamemode=adventure,distance=..2,team=wiaaf] run team join wiaaf
execute at @s if entity @a[gamemode=adventure,distance=..2,team=dab] run team join dab
execute at @s if entity @a[gamemode=adventure,distance=..2,team=pd] run team join pd
execute at @s if entity @a[gamemode=adventure,distance=..2,team=saga] run team join saga
execute at @s if entity @a[gamemode=adventure,distance=..2,team=ddp] run team join ddp
execute at @s if entity @a[gamemode=adventure,distance=..2,team=hcm] run team join hcm
execute at @s if entity @a[gamemode=adventure,distance=..2,team=rab] run team join rab
execute at @s if entity @a[gamemode=adventure,distance=..2,team=pgs] run team join pgs
execute at @s if entity @a[gamemode=adventure,distance=..2,team=cs] run team join cs
execute at @s if entity @a[gamemode=adventure,distance=..2,team=saru] run team join saru
execute at @s if entity @a[gamemode=adventure,distance=..2,team=ptasv] run team join ptasv
execute at @s if entity @a[gamemode=adventure,distance=..2,team=gf] run team join gf
execute at @s if entity @a[gamemode=adventure,distance=..2,team=ptp] run team join ptp
execute at @s if entity @a[gamemode=adventure,distance=..2,team=arb] run team join arb
execute at @s if entity @a[gamemode=adventure,distance=..2,team=sas] run team join sas
execute at @s if entity @a[gamemode=adventure,distance=..2,team=cms] run team join cms
execute at @s if entity @a[gamemode=adventure,distance=..2,team=bafe] run team join bafe
execute at @s if entity @a[gamemode=adventure,distance=..2,team=rap] run team join rap
execute at @s if entity @a[gamemode=adventure,distance=..2,team=ft] run team join ft
execute at @s if entity @a[gamemode=adventure,distance=..2,team=ol] run team join ol
execute at @s if entity @a[gamemode=adventure,distance=..2,team=eadl] run team join eadl
execute at @s if entity @a[gamemode=adventure,distance=..2,team=wat] run team join wat


function game:copy_inventory