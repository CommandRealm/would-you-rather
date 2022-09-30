# End the scenario faster
#tellraw @a[tag=playing,team=bam,gamemode=adventure] {"text":"That last diamond ore has been broken! The timer has been shortened to five seconds!","color":"red"}
execute as @a[tag=playing,team=bam] at @s run playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 1 0.7
scoreboard players set $time bam_timer 100