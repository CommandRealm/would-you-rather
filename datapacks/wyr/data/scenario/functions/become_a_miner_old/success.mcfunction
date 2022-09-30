function scenario:success_scenario
bossbar set become_a_miner_old:diamonds players @a[tag=playing,team=bam_old,gamemode=adventure]
execute unless entity @a[team=bam_old,tag=playing,gamemode=adventure] run function scenario:become_a_miner_old/end