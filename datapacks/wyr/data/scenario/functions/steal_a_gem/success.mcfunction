function scenario:success_scenario
bossbar set steal_a_gem:suspicion players @a[tag=playing,team=rab,gamemode=adventure]
execute unless entity @a[team=rab,tag=playing,gamemode=adventure] run function scenario:steal_a_gem/end