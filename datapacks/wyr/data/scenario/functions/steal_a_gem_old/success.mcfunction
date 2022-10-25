function scenario:success_scenario
bossbar set steal_a_gem_old:suspicion players @a[tag=playing,team=rab_old,gamemode=adventure]
execute unless entity @a[team=rab_old,tag=playing,gamemode=adventure] run function scenario:steal_a_gem_old/end