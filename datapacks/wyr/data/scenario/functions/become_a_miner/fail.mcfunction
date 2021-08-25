function scenario:fail_scenario
bossbar set become_a_miner:diamonds players @a[tag=playing,team=bam,gamemode=adventure]
execute unless entity @a[team=bam,tag=playing,gamemode=adventure] run function scenario:become_a_miner/end