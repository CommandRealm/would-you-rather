execute as @e[tag=tutorial_gene,type=armor_stand,scores={tutor_animation=0}] at @s store result score @s tutor_pose run data get entity @s Pose.RightArm[0]
scoreboard players add @e[tag=tutorial_gene,type=armor_stand,scores={tutor_animation=0}] tutor_pose 3
execute as @e[tag=tutorial_gene,type=armor_stand,scores={tutor_animation=0}] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s tutor_pose
scoreboard players set @e[tag=tutorial_gene,type=armor_stand,scores={tutor_pose=-50..}] tutor_animation 1