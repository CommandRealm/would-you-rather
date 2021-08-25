execute if entity @e[type=armor_stand,tag=tutorial_gene,scores={tutor_animation=0}] run function lobby:tutorial/gene_direction_0
execute if entity @e[type=armor_stand,tag=tutorial_gene,scores={tutor_animation=1}] run function lobby:tutorial/gene_direction_1
execute as @e[type=armor_stand,tag=tutorial_asset,tag=tutorial_gene] at @s run data modify entity @s Pose.LeftArm[0] set from entity @e[type=armor_stand,tag=tutorial_gene,limit=1] Pose.RightArm[0]
##execute as @e[type=armor_stand,tag=tutorial_asset,tag=tutorial_gene] at @s run data modify entity @s Pose.LeftArm[0] set from entity @e[type=armor_stand,tag=tutorial_gene,limit=1] Pose.LeftArm[0]

execute unless entity @e[type=area_effect_cloud,tag=lobby_text] run function lobby:tutorial/show_text