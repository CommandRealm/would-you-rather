function scenario:success_scenario
bossbar set survive_in_the_wilderness:campfire players @a[tag=playing,team=sitw,gamemode=adventure]
execute unless entity @a[team=sitw,tag=playing,gamemode=adventure] run function scenario:survive_in_the_wilderness/end